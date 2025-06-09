import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(InitState());
  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0;
  void plus() {
    counter++;
    emit(PlusState());
  }

  void minus() {
    counter--;
    emit(MinusState());
  }

  void reset() {
    counter = 0;
    emit(ResetState());
  }
}
