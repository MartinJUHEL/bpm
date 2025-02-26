import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/chat/chat_entity.dart';
import 'package:assoshare/domain/entities/chat/message_entity.dart';

abstract class ChatRepository {
  /// Create a new chat with the first message
  /// Returns the chat ID if successful
  Future<Result<void>> createChat({
    required String senderId,
    required String receiverId,
    required String adId,
    required String adTitle,
    required String photoUrl,
    required String content,
    required String renterName,
    required String senderName,
  });

  /// Get all chats for a user
  /// Returns a stream of chat list that updates in real-time
  Stream<List<ChatEntity>> getUserChats(String userId);

  /// Get messages for a specific chat with pagination
  /// [limit] The maximum number of messages to fetch per page
  /// [lastMessageTimestamp] The timestamp of the last message in the current list, used for pagination
  Future<Result<List<MessageEntity>>> getChatMessages(
    String chatId, {
    int limit = 20,
    DateTime? lastMessageTimestamp,
  });

  /// Get latest messages for real-time updates
  /// Returns a stream that emits only the most recent message
  /// Used for real-time chat updates
  Stream<List<MessageEntity>> getLatestMessages(String chatId);

  /// Send a new message to the chat
  /// Returns a Result indicating success or failure
  /// The new message will be received through the real-time stream
  Future<Result<void>> sendMessage(
      String chatId, String userId, String content, MessageType type);

  /// Mark messages as read
  Future<Result<void>> markMessagesAsRead(String chatId);
}
