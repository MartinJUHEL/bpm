import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/presentation/blocs/chat_details/chat_details_cubit.dart';
import 'package:assoshare/presentation/blocs/user/user_cubit.dart';
import 'package:assoshare/presentation/widgets/chat/chat_details_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({
    super.key,
    required this.args,
  });

  final ChatDetailsScreenArgs args;

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final userId = context.read<UserCubit>().state?.uid;

    // Shouldn't happen as we handle authentication.
    if (userId == null) {
      return const SizedBox.shrink();
    }

    return BlocProvider(
      create: (context) =>
          locator<ChatDetailsCubit>()..initialize(widget.args.chatId, userId),
      child: ChatDetailsContent(
        args: widget.args,
        userId: userId,
      ),
    );
  }
}

class ChatDetailsScreenArgs {
  const ChatDetailsScreenArgs({
    required this.chatId,
    required this.recipientName,
    required this.adTitle,
  });

  final String chatId;
  final String recipientName;
  final String adTitle;
}
