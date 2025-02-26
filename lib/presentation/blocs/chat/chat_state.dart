part of 'chat_cubit.dart';

@freezed
sealed class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.loaded(List<ChatEntity> chats) = _Loaded;
  const factory ChatState.error() = _Error;
}
