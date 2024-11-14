part of 'chat_asistant_send_document_bloc.dart';

/// Represents the state of ChatAsistantSendDocument in the application.

// ignore_for_file: must_be_immutable
class ChatAsistantSendDocumentState extends Equatable {
  ChatAsistantSendDocumentState(
      {this.inputoneController,
      this.chatUser = const types.User(id: 'RECEIVER_USER'),
      this.messageList = const [
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
      this.chatAsistantSendDocumentModelObj});

  TextEditingController? inputoneController;

  ChatAsistantSendDocumentModel? chatAsistantSendDocumentModelObj;

  types.User chatUser;

  List<types.Message> messageList;

  @override
  List<Object?> get props => [
        inputoneController,
        chatUser,
        messageList,
        chatAsistantSendDocumentModelObj
      ];
  ChatAsistantSendDocumentState copyWith({
    TextEditingController? inputoneController,
    types.User? chatUser,
    List<types.Message>? messageList,
    ChatAsistantSendDocumentModel? chatAsistantSendDocumentModelObj,
  }) {
    return ChatAsistantSendDocumentState(
      inputoneController: inputoneController ?? this.inputoneController,
      chatUser: chatUser ?? this.chatUser,
      messageList: messageList ?? this.messageList,
      chatAsistantSendDocumentModelObj: chatAsistantSendDocumentModelObj ??
          this.chatAsistantSendDocumentModelObj,
    );
  }
}
