part of 'landing_bloc.dart';

abstract class LandingState extends Equatable {
  const LandingState();

  @override
  List<Object> get props => [];
}

class LandingInitialState extends LandingState {}

class LandingLoadedState extends LandingState {
  final LandingModel landingModel;

  // The constructor now only requires one landingModel
  const LandingLoadedState({required this.landingModel});

  @override
  List<Object> get props => [landingModel];
}

class LandingNavigationState extends LandingState {
  final String destination;

  const LandingNavigationState({required this.destination});

  @override
  List<Object> get props => [destination];
}