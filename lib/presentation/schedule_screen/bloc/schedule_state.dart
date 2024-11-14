part of 'schedule_bloc.dart';

/// Represents the state of Schedule in the application.

// ignore_for_file: must_be_immutable
class ScheduleState extends Equatable {
  ScheduleState({this.iphone13miniTabModelObj, this.scheduleModelObj});

  ScheduleModel? scheduleModelObj;

  Iphone13miniTabModel? iphone13miniTabModelObj;

  @override
  List<Object?> get props => [iphone13miniTabModelObj, scheduleModelObj];
  ScheduleState copyWith({
    Iphone13miniTabModel? iphone13miniTabModelObj,
    ScheduleModel? scheduleModelObj,
  }) {
    return ScheduleState(
      iphone13miniTabModelObj:
          iphone13miniTabModelObj ?? this.iphone13miniTabModelObj,
      scheduleModelObj: scheduleModelObj ?? this.scheduleModelObj,
    );
  }
}
