import 'package:fixpoint/core/app_export.dart';
import 'package:equatable/equatable.dart';
import '../models/washing_model.dart';
part 'washing_event.dart';
part 'washing_state.dart';

/// A bloc that manages the state of a Washing according to the event that is dispatched to it.
class WashingBloc extends Bloc<WashingEvent, WashingState> {
  WashingBloc(WashingState initialState) : super(initialState) {
    on<WashingInitialEvent>(_onInitialize);
    on<DecrementQuantityEvent>(_decrementQuantity);
    on<IncrementQuantityEvent>(_incrementQuantity);
  }

  _onInitialize(
    WashingInitialEvent event,
    Emitter<WashingState> emit,
  ) async {
    emit(
      state.copyWith(
        quantity: 1,
      ),
    );
  }

  _decrementQuantity(
    DecrementQuantityEvent event,
    Emitter<WashingState> emit,
  ) {
    emit(
      state.copyWith(
        quantity: state.quantity > 1 ? state.quantity - event.quantity : 1,
      ),
    );
  }

  _incrementQuantity(
    IncrementQuantityEvent event,
    Emitter<WashingState> emit,
  ) {
    emit(
      state.copyWith(
        quantity: state.quantity + event.quantity,
      ),
    );
  }
}
