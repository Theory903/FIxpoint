import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/iphone_13_mini_twentyfive_model.dart';
part 'iphone_13_mini_twentyfive_event.dart';
part 'iphone_13_mini_twentyfive_state.dart';

/// A bloc that manages the state of a Iphone13MiniTwentyfive according to the event that is dispatched to it.
class Iphone13MiniTwentyfiveBloc
    extends Bloc<Iphone13MiniTwentyfiveEvent, Iphone13MiniTwentyfiveState> {
  Iphone13MiniTwentyfiveBloc(Iphone13MiniTwentyfiveState initialState)
      : super(initialState) {
    on<Iphone13MiniTwentyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniTwentyfiveInitialEvent event,
    Emitter<Iphone13MiniTwentyfiveState> emit,
  ) async {}
}
