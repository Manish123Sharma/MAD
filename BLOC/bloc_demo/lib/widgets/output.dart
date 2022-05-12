import 'package:bloc_demo/cubit/Cubit_state.dart';
import 'package:bloc_demo/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Output extends StatelessWidget {
  const Output({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //   child: BlocBuilder<CounterCubit, int>(builder: (ctx, state) {
      //     return Text(
      //       'Count Value is $state',
      //       style: const TextStyle(fontSize: 40),
      //     );
      //   }),
      // );
      child: BlocBuilder<CounterCubit, CustomCubitState>(builder: (ctx, state) {
        return Text(
          'Count Value is ${state.first} ${state.seceond}',
          style: const TextStyle(fontSize: 40),
        );
      }),
    );
  }
}
