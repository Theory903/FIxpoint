part of 'landing_bloc.dart';

class LandingState extends Equatable {
  final LandingModel? landingModelObj;

  LandingState({this.landingModelObj});

  @override
  List<Object?> get props => [landingModelObj];

  LandingState copyWith({LandingModel? landingModelObj}) {
    return LandingState(
      landingModelObj: landingModelObj ?? this.landingModelObj,
    );
  }
}
