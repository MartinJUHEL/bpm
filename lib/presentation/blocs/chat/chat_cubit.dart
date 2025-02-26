import 'dart:async';

import 'package:assoshare/domain/entities/chat/chat_entity.dart';
import 'package:assoshare/domain/repositories/chat_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_cubit.freezed.dart';
part 'chat_state.dart';

@injectable
class ChatCubit extends Cubit<ChatState> {
  final ChatRepository _chatRepository;
  final UserRepository _userRepository;

  StreamSubscription<List<ChatEntity>>? _chatsSubscription;

  ChatCubit(this._chatRepository, this._userRepository)
      : super(const ChatState.initial());

  void initialize() {
    final userId = _userRepository.getLocalUser()?.uid;
    if (userId == null) {
      return emit(const ChatState.error());
    }

    emit(const ChatState.loading());
    _chatsSubscription?.cancel();
    _chatsSubscription = _chatRepository.getUserChats(userId).listen(
      (chats) {
        emit(ChatState.loaded(chats));
      },
      onError: (error) {
        emit(const ChatState.error());
      },
    );
  }

  @override
  Future<void> close() {
    _chatsSubscription?.cancel();
    return super.close();
  }
}
