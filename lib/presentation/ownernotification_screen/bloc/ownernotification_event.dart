part of 'ownernotification_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ownernotification widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class OwnernotificationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ownernotification widget is first created.
class OwnernotificationInitialEvent extends OwnernotificationEvent {
  @override
  List<Object?> get props => [];
}
