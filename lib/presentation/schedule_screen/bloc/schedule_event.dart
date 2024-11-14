part of 'schedule_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Schedule widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ScheduleEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Schedule widget is first created.
class ScheduleInitialEvent extends ScheduleEvent {
  @override
  List<Object?> get props => [];
}
