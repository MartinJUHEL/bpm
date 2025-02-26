import 'dart:async';

import 'package:assoshare/domain/entities/chat/message_entity.dart';
import 'package:assoshare/domain/repositories/chat_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_details_cubit.freezed.dart';
part 'chat_details_state.dart';

@injectable
class ChatDetailsCubit extends Cubit<ChatDetailsState> {
  static const int _pageSize = 20;

  final ChatRepository _chatRepository;
  StreamSubscription<List<MessageEntity>>? _messagesSubscription;
  StreamSubscription<List<MessageEntity>>? _latestMessagesSubscription;

  // Used for pagination.
  DateTime? _lastMessageTimestamp;

  ChatDetailsCubit(this._chatRepository) : super(const ChatDetailsState.initial());

  void initialize(String chatId, String userId) {
    emit(const ChatDetailsState.loading());
    _lastMessageTimestamp = null;
    _fetchMessages(chatId, userId);
  }

  Future<void> _fetchMessages(String chatId, String userId) async {
    final result = await _chatRepository.getChatMessages(
      chatId,
      limit: _pageSize,
      lastMessageTimestamp: _lastMessageTimestamp,
    );

    result.when(success: (newMessages) {
      if (newMessages.isNotEmpty) {
        _lastMessageTimestamp = newMessages.last.timestamp;
      }

      final hasReachedEnd = newMessages.length < _pageSize;

      if (newMessages[0].senderId != userId) {
        _chatRepository.markMessagesAsRead(chatId);
      }

      emit(ChatDetailsState.loaded(
        messages: newMessages,
        hasReachedEnd: hasReachedEnd,
        isLoadingMore: false,
      ));

      _setupMessageListener(chatId, userId);
    }, failure: (error) {
      emit(const ChatDetailsState.error());
    });
  }

  Future<void> loadMoreMessages(String chatId) async {
    if (state case _Loaded(:final messages, :final hasReachedEnd)) {
      if (hasReachedEnd) return;

      if (state is _Loaded) {
        emit(ChatDetailsState.loaded(
          messages: messages,
          hasReachedEnd: hasReachedEnd,
          isLoadingMore: true,
        ));
      }

      final result = await _chatRepository.getChatMessages(
        chatId,
        limit: _pageSize,
        lastMessageTimestamp: _lastMessageTimestamp,
      );

      result.when(success: (oldMessages) {
        final hasReachedEnd = oldMessages.length < _pageSize;

        if (oldMessages.isNotEmpty) {
          _lastMessageTimestamp = oldMessages.last.timestamp;
        }

        final List<MessageEntity> updatedMessage = [...messages, ...oldMessages];

        emit(ChatDetailsState.loaded(
          messages: updatedMessage,
          hasReachedEnd: hasReachedEnd,
          isLoadingMore: false,
        ));
      }, failure: (error) {
        emit(const ChatDetailsState.error());
      });
    }
  }

  /// Send a new message in the chat
  /// The new message will be added to the UI through the real-time listener
  Future<void> sendMessage(String chatId, String content, String userId) async {
    final result = await _chatRepository.sendMessage(chatId, userId, content, MessageType.text);
    result.when(
      success: (_) => null, // New message will be added through the stream
      failure: (failure) => emit(const ChatDetailsState.error()),
    );
  }

  /// Setup real-time message listener
  /// This will:
  /// 1. Cancel any existing subscriptions
  /// 2. Listen for new messages
  /// 3. Add new messages to the list if they don't exist
  /// 4. Set message has read if necessary
  /// 5. Update the UI with the new messages
  void _setupMessageListener(String chatId, String userId) {
    if (state case _Loaded(:final hasReachedEnd)) {
      _messagesSubscription?.cancel();
      _latestMessagesSubscription?.cancel();

      // Listen for new messages
      _latestMessagesSubscription = _chatRepository.getLatestMessages(chatId).listen((newMessages) {
        if (newMessages.isEmpty) return;

        // Add only messages that are not already in the list
        final messages = (state as _Loaded).messages;

        final existingIds = messages.map((m) => m.id).toSet();
        final messagesToAdd = newMessages.where((m) => !existingIds.contains(m.id)).toList();

        if (messagesToAdd.isNotEmpty) {
          // Create a new list instead of modifying the existing one
          final List<MessageEntity> updatedMessages = [
            ...messagesToAdd,
            ...messages,
          ];

          if (updatedMessages[0].senderId != userId) {
            _chatRepository.markMessagesAsRead(chatId);
          }

          emit(ChatDetailsState.loaded(
            messages: updatedMessages,
            hasReachedEnd: hasReachedEnd,
            isLoadingMore: false,
          ));
        }
      }, onError: (error) {
        emit(const ChatDetailsState.error());
      });
    }
  }

  /// Clean up resources when the cubit is closed
  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    _latestMessagesSubscription?.cancel();
    return super.close();
  }
}
