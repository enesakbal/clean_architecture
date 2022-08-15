import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<IncrementValue>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });

    on<DecrementValue>(((event, emit) {
      emit(CounterState(counter: state.counter - 1));
    }));

    on<ResetValue>(((event, emit) {
      emit(CounterState(counter: 0));
    }));
  }
}
