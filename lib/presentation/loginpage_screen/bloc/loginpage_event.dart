part of 'loginpage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Loginpage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LoginpageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Loginpage widget is first created.
class LoginpageInitialEvent extends LoginpageEvent {
  @override
  List<Object?> get props => [];
}
