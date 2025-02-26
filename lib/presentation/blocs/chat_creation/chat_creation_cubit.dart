import 'package:assoshare/domain/repositories/chat_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_creation_cubit.freezed.dart';
part 'chat_creation_state.dart';

@injectable
class ChatCreationCubit extends Cubit<ChatCreationState> {
  final ChatRepository _chatRepository;
  final UserRepository _userRepository;

  ChatCreationCubit(this._chatRepository, this._userRepository) : super(const ChatCreationState.initial());

  Future<void> createChat({
    required String receiverId,
    required String adId,
    required String adTitle,
    required String photoUrl,
    required String content,
    required String renterName,
  }) async {
    final user = _userRepository.getLocalUser();

    if (user == null || user.uid == receiverId) {
      return;
    }

    emit(const ChatCreationState.loading());

    final result = await _chatRepository.createChat(
      senderId: user.uid,
      receiverId: receiverId,
      adId: adId,
      adTitle: adTitle,
      photoUrl: photoUrl,
      content: content,
      renterName: renterName,
      senderName: user.displayName,
    );

    result.when(
      success: (_) => emit(const ChatCreationState.success()),
      failure: (error) => emit(const ChatCreationState.error()),
    );
  }
}
