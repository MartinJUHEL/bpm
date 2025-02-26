part of 'chat_details_cubit.dart';

@freezed
sealed class ChatDetailsState with _$ChatDetailsState {
  const factory ChatDetailsState.initial() = _Initial;
  const factory ChatDetailsState.loading() = _Loading;
  const factory ChatDetailsState.loaded({
    required List<MessageEntity> messages,
    required bool hasReachedEnd,
    required bool isLoadingMore,
  }) = _Loaded;
  const factory ChatDetailsState.error() = _Error;
}
