part of 'workassign_bloc.dart';

/// Represents the state of Workassign in the application.

// ignore_for_file: must_be_immutable
class WorkassignState extends Equatable {
  WorkassignState({this.workassignModelObj});

  WorkassignModel? workassignModelObj;

  @override
  List<Object?> get props => [workassignModelObj];
  WorkassignState copyWith({WorkassignModel? workassignModelObj}) {
    return WorkassignState(
      workassignModelObj: workassignModelObj ?? this.workassignModelObj,
    );
  }
}
