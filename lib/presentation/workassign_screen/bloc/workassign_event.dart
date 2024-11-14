part of 'workassign_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Workassign widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WorkassignEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Workassign widget is first created.
class WorkassignInitialEvent extends WorkassignEvent {
  @override
  List<Object?> get props => [];
}
