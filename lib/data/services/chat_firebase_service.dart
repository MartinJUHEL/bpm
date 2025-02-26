import 'package:assoshare/core/data/services/base_firebase_service.dart';
import 'package:assoshare/data/models/chat/chat_model.dart';
import 'package:assoshare/data/models/chat/message_model.dart';
import 'package:assoshare/domain/entities/chat/message_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@LazySingleton()
class ChatFirebaseService extends BaseFirebaseService {
  final FirebaseFirestore _firestore;

  ChatFirebaseService(this._firestore, super._logger);

  static const _chatsCollection = 'chats';
  static const _messagesCollection = 'messages';
  static const _senderIdField = 'senderId';
  static const _renterIdField = 'renterId';
  static const _lastMessageReadField = 'lastMessageRead';
  static const _lastMessageField = 'lastMessage';
  static const _lastMessageTimestampField = 'lastMessageTimestamp';
  static const _timestampField = 'timestamp';

  /// Returns reference to user's message collection
  /// Structure: /chats/{chatId}/messages/
  CollectionReference<Map<String, dynamic>> _getMessagesCollection(String chatId) =>
      _firestore.collection(_chatsCollection).doc(chatId).collection(_messagesCollection);

  /// Get all chats for a user
  Stream<List<ChatModel>> getUserChats(String userId) {
    return _firestore
        .collection(_chatsCollection)
        .where(
          Filter.or(
            Filter(_senderIdField, isEqualTo: userId),
            Filter(_renterIdField, isEqualTo: userId),
          ),
        )
        .orderBy(_lastMessageTimestampField, descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => ChatModel.fromJson({...doc.data(), 'id': doc.id})).toList());
  }

  /// Get messages for a specific chat with pagination
  Future<List<MessageModel>> getChatMessages(
    String chatId, {
    int limit = 20,
    DateTime? lastMessageDateTime,
  }) async {
    Query<Map<String, dynamic>> query =
        _getMessagesCollection(chatId).orderBy(_timestampField, descending: true).limit(limit);

    if (lastMessageDateTime != null) {
      query = query.startAfter([Timestamp.fromDate(lastMessageDateTime)]);
    }

    final doc = await executeWithErrorHandling(() => query.get(), 'getChatMessages');

    return doc.docs.map((doc) => MessageModel.fromJson({...doc.data(), 'id': doc.id})).toList();
  }

  /// Get latest messages for real-time updates
  Stream<List<MessageModel>> getLatestMessages(String chatId) {
    return _getMessagesCollection(chatId)
        .orderBy(_timestampField, descending: true)
        .limit(1)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => MessageModel.fromJson({...doc.data(), 'id': doc.id})).toList());
  }

  /// Send a new message
  Future<void> sendMessage(String chatId, String userId, String content, MessageType type) async {
    final batch = _firestore.batch();
    final messageId = const Uuid().v4();

    // Créer le nouveau message
    final messageRef = _getMessagesCollection(chatId).doc();
    final messageData = MessageModel(
      id: messageId,
      content: content,
      senderId: userId,
      timestamp: DateTime.now(),
      type: type.name,
      status: MessageStatus.sent.name,
    );

    batch.set(messageRef, messageData.toFirestore());

    // Mettre à jour le chat
    final chatRef = _firestore.collection(_chatsCollection).doc(chatId);
    batch.update(chatRef, {
      _lastMessageField: content,
      _lastMessageTimestampField: FieldValue.serverTimestamp(),
      _lastMessageReadField: false,
    });

    return executeWithErrorHandling(() => batch.commit(), 'sendMessage');
  }

  /// Mark messages as read if the user is not the sender of the last message
  Future<void> markMessagesAsRead(String chatId) async {
    return executeWithErrorHandling(
        () => _firestore.collection(_chatsCollection).doc(chatId).update({
              _lastMessageReadField: true,
            }),
        'markMessagesAsRead');
  }

  /// Create a new chat with the first message
  Future<void> createChat({
    required String senderId,
    required String receiverId,
    required String adId,
    required String adTitle,
    required String photoUrl,
    required String content,
    required String renterName,
    required String senderName,
  }) async {
    if (senderId == receiverId) {
      throw Exception('Cannot create chat with yourself');
    }

    final batch = _firestore.batch();
    final chatId = const Uuid().v4();
    final messageId = const Uuid().v4();

    // Create chat document
    final chatRef = _firestore.collection(_chatsCollection).doc(chatId);
    final chatData = ChatModel(
      id: chatId,
      adId: adId,
      adTitle: adTitle,
      lastMessage: content,
      photoUrl: photoUrl,
      lastMessageTimestamp: DateTime.now(),
      senderId: senderId,
      renterId: receiverId,
      lastMessageRead: false,
      createdAt: DateTime.now(),
      renterName: renterName,
      senderName: senderName,
    );

    final chatFirestoreData = chatData.toFirestore();

    batch.set(chatRef, chatFirestoreData);

    // Create first message
    final messageRef = chatRef.collection(_messagesCollection).doc();
    final messageData = MessageModel(
      id: messageId,
      content: content,
      senderId: senderId,
      timestamp: DateTime.now(),
      type: MessageType.text.name,
      status: MessageStatus.sent.name,
    );

    final messageFirestoreData = messageData.toFirestore();
    batch.set(messageRef, messageFirestoreData);

    return executeWithErrorHandling(() => batch.commit(), 'createChat');
  }
}
