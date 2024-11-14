part of 'review_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Review widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReviewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Review widget is first created.
class ReviewInitialEvent extends ReviewEvent {
  @override
  List<Object?> get props => [];
}
