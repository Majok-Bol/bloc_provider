import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementCounterEvent>(incrementCounterEvent);
  }
  int count = 0;
  FutureOr<void> incrementCounterEvent(
    IncrementCounterEvent event,
    Emitter<CounterState> emit,
  ) {
    count = count + 1;
    emit(IncrementCounterState(count: count));
  }
}
