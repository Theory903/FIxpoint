part of 'pay_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Pay widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PayEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Pay widget is first created.
class PayInitialEvent extends PayEvent {
  @override
  List<Object?> get props => [];
}
