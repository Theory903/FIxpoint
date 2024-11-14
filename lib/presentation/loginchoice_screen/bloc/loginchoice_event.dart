part of 'loginchoice_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Loginchoice widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LoginchoiceEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Loginchoice widget is first created.
class LoginchoiceInitialEvent extends LoginchoiceEvent {
  @override
  List<Object?> get props => [];
}
