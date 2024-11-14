part of 'management_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Management widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ManagementEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Management widget is first created.
class ManagementInitialEvent extends ManagementEvent {
  @override
  List<Object?> get props => [];
}
