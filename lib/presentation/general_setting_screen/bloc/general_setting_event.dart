part of 'general_setting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GeneralSetting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class GeneralSettingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the GeneralSetting widget is first created.
class GeneralSettingInitialEvent extends GeneralSettingEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitchEvent extends GeneralSettingEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

class ChangeSwitch1Event extends GeneralSettingEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
