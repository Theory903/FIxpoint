import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/landing_model.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc(LandingState landingState) : super(LandingModel() as LandingState) {
    on<LandingInitialEvent>(_onInitialize);
  }

  void _onInitialize(LandingInitialEvent event, Emitter<LandingState> emit) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    emit(AppRoutes.loginChoiceScreen as LandingState); // Emitting a new state for navigation
  }
}