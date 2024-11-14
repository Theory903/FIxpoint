part of 'notifcation_bloc.dart';

/// Represents the state of Notifcation in the application.

// ignore_for_file: must_be_immutable
class NotifcationState extends Equatable {
  NotifcationState({this.notifcationModelObj});

  NotifcationModel? notifcationModelObj;

  @override
  List<Object?> get props => [notifcationModelObj];
  NotifcationState copyWith({NotifcationModel? notifcationModelObj}) {
    return NotifcationState(
      notifcationModelObj: notifcationModelObj ?? this.notifcationModelObj,
    );
  }
}
