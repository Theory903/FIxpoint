part of 'ownernotification_bloc.dart';

/// Represents the state of Ownernotification in the application.

// ignore_for_file: must_be_immutable
class OwnernotificationState extends Equatable {
  OwnernotificationState({this.ownernotificationModelObj});

  OwnernotificationModel? ownernotificationModelObj;

  @override
  List<Object?> get props => [ownernotificationModelObj];
  OwnernotificationState copyWith(
      {OwnernotificationModel? ownernotificationModelObj}) {
    return OwnernotificationState(
      ownernotificationModelObj:
          ownernotificationModelObj ?? this.ownernotificationModelObj,
    );
  }
}
