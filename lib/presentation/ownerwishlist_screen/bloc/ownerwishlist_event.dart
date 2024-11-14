part of 'ownerwishlist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ownerwishlist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class OwnerwishlistEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ownerwishlist widget is first created.
class OwnerwishlistInitialEvent extends OwnerwishlistEvent {
  @override
  List<Object?> get props => [];
}

///Event for updating quantity

// ignore_for_file: must_be_immutable
class DecrementQuantityEvent extends OwnerwishlistEvent {
  DecrementQuantityEvent({required this.productlistItemModelObj});

  ProductlistItemModel productlistItemModelObj;

  @override
  List<Object?> get props => [productlistItemModelObj];
}

///Event for updating quantity

// ignore: duplicate_ignore
// ignore_for_file: must_be_immutable
class IncrementQuantityEvent extends OwnerwishlistEvent {
  IncrementQuantityEvent({required this.productlistItemModelObj});

  ProductlistItemModel productlistItemModelObj;

  @override
  List<Object?> get props => [productlistItemModelObj];
}
