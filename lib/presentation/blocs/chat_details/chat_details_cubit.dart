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
  List<MessageEntity> _messages = [];
  DateTime? _lastMessageTimestamp;
  bool _hasReachedEnd = false;
  String? _currentChatId;
  bool _isLoadingMore = false;

  ChatDetailsCubit(this._chatRepository) : super(const ChatDetailsState.initial());

  /// Initialize the chat details screen with the given chat ID
  /// This will:
  /// 1. Reset all state variables
  /// 2. Load the first page of messages
  /// 3. Setup real-time message listener
  void initialize(String chatId) {
    emit(const ChatDetailsState.loading());
    _currentChatId = chatId;
    _messages = [];
    _lastMessageTimestamp = null;
    _hasReachedEnd = false;
    _isLoadingMore = false;
    _loadMoreMessages();
    _setupMessageListener();
  }

  /// Load more messages using pagination
  /// This will:
  /// 1. Check if we can load more messages
  /// 2. Update loading state
  /// 3. Fetch new messages
  /// 4. Update the messages list and state
  Future<void> _loadMoreMessages() async {
    if (_currentChatId == null || _hasReachedEnd || _isLoadingMore) return;

    _isLoadingMore = true;
    if (state is _Loaded) {
      emit(ChatDetailsState.loaded(
        messages: _messages,
        hasReachedEnd: _hasReachedEnd,
        isLoadingMore: true,
      ));
    }

    try {
      final newMessages = await _chatRepository
          .getChatMessages(
            _currentChatId!,
            limit: _pageSize,
            lastMessageTimestamp: _lastMessageTimestamp,
          )
          .first;

      if (newMessages.isEmpty) {
        _hasReachedEnd = true;
      } else {
        _messages.addAll(newMessages);
        _lastMessageTimestamp = newMessages.last.timestamp;
      }

      emit(ChatDetailsState.loaded(
        messages: _messages,
        hasReachedEnd: _hasReachedEnd,
        isLoadingMore: false,
      ));
    } catch (e) {
      emit(const ChatDetailsState.error());
    } finally {
      _isLoadingMore = false;
    }
  }

  /// Trigger loading more messages when user scrolls to the end
  void loadMore() {
    if (state is _Loaded && !_isLoadingMore) {
      _loadMoreMessages();
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
  /// 4. Update the UI with the new messages
  void _setupMessageListener() {
    if (_currentChatId == null) return;

    _messagesSubscription?.cancel();
    _latestMessagesSubscription?.cancel();

    // Listen for new messages
    _latestMessagesSubscription = _chatRepository.getLatestMessages(_currentChatId!).listen((newMessages) {
      if (newMessages.isEmpty) return;

      // Add only messages that are not already in the list
      final existingIds = _messages.map((m) => m.id).toSet();
      final messagesToAdd = newMessages.where((m) => !existingIds.contains(m.id)).toList();

      if (messagesToAdd.isNotEmpty) {
        _messages.insertAll(0, messagesToAdd);
        emit(ChatDetailsState.loaded(
          messages: _messages,
          hasReachedEnd: _hasReachedEnd,
          isLoadingMore: false,
        ));
      }
    }, onError: (error) {
      emit(const ChatDetailsState.error());
    });
  }

  /// Clean up resources when the cubit is closed
  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    _latestMessagesSubscription?.cancel();
    return super.close();
  }
}
