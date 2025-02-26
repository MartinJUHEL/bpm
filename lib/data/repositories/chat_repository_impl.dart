import 'package:assoshare/core/data/repositories/base_repository.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/data/services/chat_firebase_service.dart';
import 'package:assoshare/domain/entities/chat/chat_entity.dart';
import 'package:assoshare/domain/entities/chat/message_entity.dart';
import 'package:assoshare/domain/repositories/chat_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ChatRepository)
final class ChatRepositoryImpl extends BaseRemoteRepository
    implements ChatRepository {
  final ChatFirebaseService _chatService;

  ChatRepositoryImpl(
    this._chatService,
    super._genericErrorTrigger,
    super._connectivityInfo,
    super._logger,
  );

  @override
  Stream<List<ChatEntity>> getUserChats(String userId) {
    return safeStream(
        listen: _chatService
            .getUserChats(userId)
            .map((chats) => chats.map((chat) => chat.toEntity()).toList()));
  }

  @override
  Future<Result<List<MessageEntity>>> getChatMessages(
    String chatId, {
    int limit = 20,
    DateTime? lastMessageTimestamp,
  }) {
    return safeCall(
        action: () => _chatService.getChatMessages(chatId,
            limit: limit, lastMessageDateTime: lastMessageTimestamp),
        transform: (messages) =>
            messages.map((message) => message.toEntity()).toList());
  }

  @override
  Stream<List<MessageEntity>> getLatestMessages(String chatId) {
    return safeStream(
        listen: _chatService.getLatestMessages(chatId).map(
              (messages) =>
                  messages.map((message) => message.toEntity()).toList(),
            ));
  }

  @override
  Future<Result<void>> sendMessage(
      String chatId, String userId, String content, MessageType type) {
    return safeCall(
        action: () => _chatService.sendMessage(chatId, userId, content, type),
        transform: (_) => {});
  }

  @override
  Future<Result<void>> markMessagesAsRead(String chatId) {
    return safeCall(
        action: () => _chatService.markMessagesAsRead(chatId),
        transform: (_) => {});
  }

  @override
  Future<Result<void>> createChat({
    required String senderId,
    required String receiverId,
    required String adId,
    required String adTitle,
    required String photoUrl,
    required String content,
    required String renterName,
    required String senderName,
  }) {
    return safeCall(
        action: () => _chatService.createChat(
              senderId: senderId,
              receiverId: receiverId,
              adId: adId,
              adTitle: adTitle,
              photoUrl: photoUrl,
              content: content,
              renterName: renterName,
              senderName: senderName,
            ),
        transform: (_) => {});
  }
}
