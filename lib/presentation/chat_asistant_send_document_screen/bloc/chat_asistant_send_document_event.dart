part of 'chat_asistant_send_document_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatAsistantSendDocument widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ChatAsistantSendDocumentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ChatAsistantSendDocument widget is first created.
class ChatAsistantSendDocumentInitialEvent
    extends ChatAsistantSendDocumentEvent {
  @override
  List<Object?> get props => [];
}
