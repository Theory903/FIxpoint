part of 'loginchoice_bloc.dart';

/// Represents the state of Loginchoice in the application.

// ignore_for_file: must_be_immutable
class LoginchoiceState extends Equatable {
  LoginchoiceState({this.loginchoiceModelObj});

  LoginchoiceModel? loginchoiceModelObj;

  @override
  List<Object?> get props => [loginchoiceModelObj];
  LoginchoiceState copyWith({LoginchoiceModel? loginchoiceModelObj}) {
    return LoginchoiceState(
      loginchoiceModelObj: loginchoiceModelObj ?? this.loginchoiceModelObj,
    );
  }
}
