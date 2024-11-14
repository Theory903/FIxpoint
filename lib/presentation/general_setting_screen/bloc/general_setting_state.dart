part of 'general_setting_bloc.dart';

/// Represents the state of GeneralSetting in the application.

// ignore_for_file: must_be_immutable
class GeneralSettingState extends Equatable {
  GeneralSettingState(
      {this.isSelectedSwitch = false,
      this.isSelectedSwitch1 = false,
      this.generalSettingModelObj});

  GeneralSettingModel? generalSettingModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props =>
      [isSelectedSwitch, isSelectedSwitch1, generalSettingModelObj];
  GeneralSettingState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    GeneralSettingModel? generalSettingModelObj,
  }) {
    return GeneralSettingState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      generalSettingModelObj:
          generalSettingModelObj ?? this.generalSettingModelObj,
    );
  }
}
