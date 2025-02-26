import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/presentation/blocs/chat/chat_cubit.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:assoshare/presentation/widgets/common/expanded_center_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return locator<ChatCubit>()..initialize();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'chat.tab.title'.tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: () => Center(
                  child: ErrorScreen(
                onRetryClicked: () => context.read<ChatCubit>().initialize(),
              )),
              loaded: (chats) {
                if (chats.isEmpty) {
                  return Center(
                    child: Text(
                      'chat.tab.empty'.tr(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  );
                }

                return ListView.separated(
                  itemCount: chats.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final chat = chats[index];
                    return ListTile(
                      title: Text(
                        chat.adTitle,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      subtitle: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            timeago.format(chat.lastMessageTimestamp, locale: context.locale.languageCode),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      onTap: () {
                        context.pushNamed(
                          RouteList.chatDetails.name,
                          extra: chat.id,
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
