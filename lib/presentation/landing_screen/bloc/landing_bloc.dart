// landing_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fixpoint/routes/app_routes.dart';
import '../models/landing_model.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  // Use a concrete initial state
  LandingBloc() : super(LandingInitialState()) { 
    on<LandingInitialEvent>(_onInitialize);
    on<LandingNavigateToLoginChoiceEvent>(_onNavigateToLoginChoice);
  }

  void _onInitialize(LandingInitialEvent event, Emitter<LandingState> emit) async {
  await Future.delayed(const Duration(milliseconds: 3000));
  // The landingModel must be created here
  LandingModel landingModel = LandingModel(); // This is where you create the model
  emit(LandingLoadedState(landingModel: landingModel)); // Pass landingModel to the state
}
  void _onNavigateToLoginChoice(LandingNavigateToLoginChoiceEvent event, Emitter<LandingState> emit) {
    emit(LandingNavigationState(destination: AppRoutes.loginChoiceScreen));
  }
}