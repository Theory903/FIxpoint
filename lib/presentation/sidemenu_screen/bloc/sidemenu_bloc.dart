import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/sidemenu_model.dart';
part 'sidemenu_event.dart';
part 'sidemenu_state.dart';

/// A bloc that manages the state of a Sidemenu according to the event that is dispatched to it.
class SidemenuBloc extends Bloc<SidemenuEvent, SidemenuState> {
  SidemenuBloc(SidemenuState initialState) : super(initialState) {
    on<SidemenuInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _onInitialize(
    SidemenuInitialEvent event,
    Emitter<SidemenuState> emit,
  ) async {
    emit(
      state.copyWith(
        isSelectedSwitch: false,
      ),
    );
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SidemenuState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }
}
