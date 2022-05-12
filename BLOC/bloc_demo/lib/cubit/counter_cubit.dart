import 'package:bloc_demo/cubit/Cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class CounterCubit extends Cubit<int> {
class CounterCubit extends Cubit<CustomCubitState> {
  // CounterCubit(int initialState) : super(initialState);
  CounterCubit(CustomCubitState initialState) : super(initialState);

  // Create Operations
  void plus() {
    // emit(state + 1);
    emit(CustomCubitState(state.first + 1, state.seceond + 1));
  }
}
