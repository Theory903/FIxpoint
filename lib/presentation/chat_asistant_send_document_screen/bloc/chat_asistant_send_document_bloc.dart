import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import '../models/chat_asistant_send_document_model.dart';
part 'chat_asistant_send_document_event.dart';
part 'chat_asistant_send_document_state.dart';

/// A bloc that manages the state of a ChatAsistantSendDocument according to the event that is dispatched to it.
class ChatAsistantSendDocumentBloc
    extends Bloc<ChatAsistantSendDocumentEvent, ChatAsistantSendDocumentState> {
  ChatAsistantSendDocumentBloc(ChatAsistantSendDocumentState initialState)
      : super(initialState) {
    on<ChatAsistantSendDocumentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatAsistantSendDocumentInitialEvent event,
    Emitter<ChatAsistantSendDocumentState> emit,
  ) async {
    emit(
      state.copyWith(
        inputoneController: TextEditingController(),
        chatUser: const types.User(id: 'RECEIVER_USER'),
        messageList: const [
          types.TextMessage(
              type: types.MessageType.text,
              id: '124:934',
              author: types.User(id: 'RECEIVER_USER'),
              text: "Transaction slip of\nWashing at patel nager",
              status: types.Status.delivered,
              createdAt: 1730959647495),
          types.TextMessage(
              type: types.MessageType.text,
              id: '124:940',
              author: types.User(id: 'RECEIVER_USER'),
              text: "Payment slip",
              status: types.Status.delivered,
              createdAt: 1730959647495),
          types.TextMessage(
              type: types.MessageType.text,
              id: '124:941',
              author: types.User(id: 'RECEIVER_USER'),
              text: "250kb",
              status: types.Status.delivered,
              createdAt: 1730959647495),
          types.TextMessage(
              type: types.MessageType.text,
              id: '124:946',
              author: types.User(id: 'SENDER_USER'),
              text: "Is there anything we can help you with that???",
              status: types.Status.delivered,
              createdAt: 1730959647495)
        ],
      ),
    );
  }
}
