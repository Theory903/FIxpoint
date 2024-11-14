part of 'ownerbillpayment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ownerbillpayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class OwnerbillpaymentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ownerbillpayment widget is first created.
class OwnerbillpaymentInitialEvent extends OwnerbillpaymentEvent {
  @override
  List<Object?> get props => [];
}
