part of 'notifcation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Notifcation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NotifcationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Notifcation widget is first created.
class NotifcationInitialEvent extends NotifcationEvent {
  @override
  List<Object?> get props => [];
}
