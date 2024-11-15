part of 'landing_bloc.dart';

abstract class LandingEvent extends Equatable {
  const LandingEvent();

  @override
  List<Object> get props => [];
}

class LandingInitialEvent extends LandingEvent {}

class LandingNavigateToLoginChoiceEvent extends LandingEvent {}