import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/features/counter/counter_cubit.dart';
import 'package:marketi_app/features/counter/counter_states.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          // switch (state) {
          //   case (PlusState _):
          //     debugPrint("PlusState");

          //     break;
          //   default:
          // }
          if (state is PlusState) {
            debugPrint("PlusState");
          }
          if (state is MinusState) {
            debugPrint("MinusState");
          }
          if (state is ResetState) {
            debugPrint("ResetState");
          }
        },
        builder: (context, state) {
          var cubit = CounterCubit.get(context);
          return Scaffold(
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () => cubit.minus(), child: Text("Minus")),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${cubit.counter}"),
                    TextButton(onPressed: () => cubit.reset(), child: Text("Reset")),
                  ],
                ),
                TextButton(onPressed: () => cubit.plus(), child: Text("plus")),
              ],
            ),
          );
        },
      ),
    );
  }
}
