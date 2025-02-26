part of 'chat_creation_cubit.dart';

@freezed
sealed class ChatCreationState with _$ChatCreationState {
  const factory ChatCreationState.initial() = _Initial;

  const factory ChatCreationState.loading() = _Loading;

  const factory ChatCreationState.success() = _Success;

  const factory ChatCreationState.error() = _Error;
}
