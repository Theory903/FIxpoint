part of 'outlet_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Outlet widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class OutletEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Outlet widget is first created.
class OutletInitialEvent extends OutletEvent {
  @override
  List<Object?> get props => [];
}
