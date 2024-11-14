part of 'notifcation_one_bloc.dart';

/// Represents the state of NotifcationOne in the application.

// ignore_for_file: must_be_immutable
class NotifcationOneState extends Equatable {
  NotifcationOneState({this.notifcationOneModelObj});

  NotifcationOneModel? notifcationOneModelObj;

  @override
  List<Object?> get props => [notifcationOneModelObj];
  NotifcationOneState copyWith({NotifcationOneModel? notifcationOneModelObj}) {
    return NotifcationOneState(
      notifcationOneModelObj:
          notifcationOneModelObj ?? this.notifcationOneModelObj,
    );
  }
}
