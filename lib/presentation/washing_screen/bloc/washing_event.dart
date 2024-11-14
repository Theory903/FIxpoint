part of 'washing_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Washing widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WashingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Washing widget is first created.
class WashingInitialEvent extends WashingEvent {
  @override
  List<Object?> get props => [];
}

///Event for updating quantity

// ignore_for_file: must_be_immutable
class DecrementQuantityEvent extends WashingEvent {
  DecrementQuantityEvent({required this.quantity});

  int quantity;

  @override
  List<Object?> get props => [quantity];
}

///Event for updating quantity
class IncrementQuantityEvent extends WashingEvent {
  IncrementQuantityEvent({required this.quantity});

  int quantity;

  @override
  List<Object?> get props => [quantity];
}
