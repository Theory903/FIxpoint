import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/app_export.dart';
import '../models/general_setting_model.dart';
part 'general_setting_event.dart';
part 'general_setting_state.dart';

/// A bloc that manages the state of a GeneralSetting according to the event that is dispatched to it.
class GeneralSettingBloc
    extends Bloc<GeneralSettingEvent, GeneralSettingState> {
  GeneralSettingBloc(GeneralSettingState initialState) : super(initialState) {
    on<GeneralSettingInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
  }

  _onInitialize(
    GeneralSettingInitialEvent event,
    Emitter<GeneralSettingState> emit,
  ) async {
    emit(
      state.copyWith(
        isSelectedSwitch: false,
        isSelectedSwitch1: false,
      ),
    );
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<GeneralSettingState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<GeneralSettingState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }
}
