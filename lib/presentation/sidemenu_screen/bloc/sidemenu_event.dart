part of 'sidemenu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sidemenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SidemenuEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sidemenu widget is first created.
class SidemenuInitialEvent extends SidemenuEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitchEvent extends SidemenuEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
