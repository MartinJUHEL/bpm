import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/domain/entities/chat/message_entity.dart';
import 'package:assoshare/presentation/blocs/chat_details/chat_details_cubit.dart';
import 'package:assoshare/presentation/blocs/user/user_cubit.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:assoshare/presentation/widgets/common/expanded_center_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({
    super.key,
    required this.chatId,
  });

  final String chatId;

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll >= maxScroll * 0.9) {
      context.read<ChatDetailsCubit>().loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final userId = context.read<UserCubit>().state?.uid;

    return BlocProvider(
      create: (context) =>
          locator<ChatDetailsCubit>()..initialize(widget.chatId),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(
              'chat.details.title'.tr(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: BlocBuilder<ChatDetailsCubit, ChatDetailsState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: () => ExpandedCenterWidget(
                          child: ErrorScreen(
                        onRetryClicked: () => context
                            .read<ChatDetailsCubit>()
                            .initialize(widget.chatId),
                      )),
                      loaded: (messages, hasReachedEnd, isLoadingMore) {
                        if (messages.isEmpty) {
                          return Center(
                            child: Text(
                              'chat.details.empty'.tr(),
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          );
                        }

                        return Stack(
                          children: [
                            ListView.builder(
                              controller: _scrollController,
                              reverse: true,
                              padding: const EdgeInsets.all(8),
                              itemCount:
                                  messages.length + (hasReachedEnd ? 0 : 1),
                              itemBuilder: (context, index) {
                                if (index == messages.length) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Center(
                                      child: isLoadingMore
                                          ? const CircularProgressIndicator()
                                          : const SizedBox.shrink(),
                                    ),
                                  );
                                }

                                final message = messages[index];
                                final isCurrentUser =
                                    message.senderId == userId;

                                return Align(
                                  alignment: isCurrentUser
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.75,
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 8,
                                    ),
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: isCurrentUser
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : Theme.of(context)
                                              .colorScheme
                                              .surfaceContainerHighest,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          message.content,
                                          style: TextStyle(
                                            color: isCurrentUser
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              timeago.format(message.timestamp,
                                                  locale: context
                                                      .locale.languageCode),
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: isCurrentUser
                                                    ? Theme.of(context)
                                                        .colorScheme
                                                        .onPrimary
                                                        .withOpacity(0.7)
                                                    : Theme.of(context)
                                                        .colorScheme
                                                        .onSurfaceVariant
                                                        .withOpacity(0.7),
                                              ),
                                            ),
                                            if (isCurrentUser) ...[
                                              const SizedBox(width: 4),
                                              _buildMessageStatus(
                                                  context, message.status),
                                            ],
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _messageController,
                          decoration: InputDecoration(
                            hintText: 'chat.details.input.hint'.tr(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                          ),
                          maxLines: null,
                          textCapitalization: TextCapitalization.sentences,
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () {
                          final message = _messageController.text.trim();
                          if (message.isNotEmpty && userId != null) {
                            context
                                .read<ChatDetailsCubit>()
                                .sendMessage(widget.chatId, message, userId);
                            _messageController.clear();
                          }
                        },
                        tooltip: 'chat.details.input.send'.tr(),
                        icon: Icon(
                          Icons.send,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageStatus(BuildContext context, MessageStatus status) {
    final color = Theme.of(context).colorScheme.onPrimary.withOpacity(0.7);
    final String statusText = 'chat.details.status.${status.name}'.tr();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          statusText,
          style: TextStyle(
            fontSize: 12,
            color: color,
          ),
        ),
        const SizedBox(width: 2),
        Icon(
          status == MessageStatus.sent
              ? Icons.check
              : status == MessageStatus.delivered
                  ? Icons.done_all
                  : Icons.done_all,
          size: 12,
          color: status == MessageStatus.read
              ? Theme.of(context).colorScheme.primary
              : color,
        ),
      ],
    );
  }
}
