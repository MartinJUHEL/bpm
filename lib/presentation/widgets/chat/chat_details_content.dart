import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/presentation/blocs/chat_details/chat_details_cubit.dart';
import 'package:assoshare/presentation/screens/chat_details_screen.dart';
import 'package:assoshare/presentation/widgets/chat/message_bubble_widget.dart';
import 'package:assoshare/presentation/widgets/chat/message_input_widget.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:assoshare/presentation/widgets/common/expanded_center_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatDetailsContent extends StatefulWidget {
  const ChatDetailsContent({
    super.key,
    required this.args,
    required this.userId,
  });

  final ChatDetailsScreenArgs args;
  final String userId;

  @override
  State<ChatDetailsContent> createState() => _ChatDetailsContentState();
}

class _ChatDetailsContentState extends State<ChatDetailsContent> {
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
      context.read<ChatDetailsCubit>().loadMoreMessages(widget.args.chatId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.args.recipientName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              widget.args.adTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatDetailsCubit, ChatDetailsState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: () => ExpandedCenterWidget(
                      child: ErrorScreen(
                    onRetryClicked: () => context
                        .read<ChatDetailsCubit>()
                        .initialize(widget.args.chatId, widget.userId),
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
                          padding: const EdgeInsets.all(Dimens.paddingSmaller),
                          itemCount: messages.length + (hasReachedEnd ? 0 : 1),
                          itemBuilder: (context, index) {
                            if (index == messages.length) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: Dimens.paddingPage),
                                child: Center(
                                  child: isLoadingMore
                                      ? const CircularProgressIndicator()
                                      : const SizedBox.shrink(),
                                ),
                              );
                            }

                            final message = messages[index];
                            final isCurrentUser = message.senderId == widget.userId;

                            return MessageBubbleWidget(
                              message: message,
                              isCurrentUser: isCurrentUser,
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
          MessageInputWidget(
            controller: _messageController,
            onSendMessage: (message) => context
                .read<ChatDetailsCubit>()
                .sendMessage(widget.args.chatId, message, widget.userId),
          ),
        ],
      ),
    );
  }
} 