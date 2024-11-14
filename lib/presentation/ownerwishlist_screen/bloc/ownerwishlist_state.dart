part of 'ownerwishlist_bloc.dart';

/// Represents the state of Ownerwishlist in the application.

// ignore_for_file: must_be_immutable
class OwnerwishlistState extends Equatable {
  OwnerwishlistState({this.ownerwishlistModelObj});

  OwnerwishlistModel? ownerwishlistModelObj;

  @override
  List<Object?> get props => [ownerwishlistModelObj];
  OwnerwishlistState copyWith({OwnerwishlistModel? ownerwishlistModelObj}) {
    return OwnerwishlistState(
      ownerwishlistModelObj:
          ownerwishlistModelObj ?? this.ownerwishlistModelObj,
    );
  }
}
