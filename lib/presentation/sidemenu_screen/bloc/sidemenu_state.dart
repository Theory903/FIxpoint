part of 'sidemenu_bloc.dart';

/// Represents the state of Sidemenu in the application.

// ignore_for_file: must_be_immutable
class SidemenuState extends Equatable {
  SidemenuState({this.isSelectedSwitch = false, this.sidemenuModelObj});

  SidemenuModel? sidemenuModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [isSelectedSwitch, sidemenuModelObj];
  SidemenuState copyWith({
    bool? isSelectedSwitch,
    SidemenuModel? sidemenuModelObj,
  }) {
    return SidemenuState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      sidemenuModelObj: sidemenuModelObj ?? this.sidemenuModelObj,
    );
  }
}
