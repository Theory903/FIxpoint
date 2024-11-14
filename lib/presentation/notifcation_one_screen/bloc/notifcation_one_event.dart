part of 'notifcation_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotifcationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NotifcationOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NotifcationOne widget is first created.
class NotifcationOneInitialEvent extends NotifcationOneEvent {
  @override
  List<Object?> get props => [];
}
