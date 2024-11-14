part of 'ownerdashboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ownerdashboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class OwnerdashboardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ownerdashboard widget is first created.
class OwnerdashboardInitialEvent extends OwnerdashboardEvent {
  @override
  List<Object?> get props => [];
}
