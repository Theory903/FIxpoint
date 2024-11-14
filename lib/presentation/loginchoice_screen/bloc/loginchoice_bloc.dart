import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/loginchoice_model.dart';
part 'loginchoice_event.dart';
part 'loginchoice_state.dart';

/// A bloc that manages the state of a Loginchoice according to the event that is dispatched to it.
class LoginchoiceBloc extends Bloc<LoginchoiceEvent, LoginchoiceState> {
  LoginchoiceBloc(LoginchoiceState initialState) : super(initialState) {
    on<LoginchoiceInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginchoiceInitialEvent event,
    Emitter<LoginchoiceState> emit,
  ) async {}
}
