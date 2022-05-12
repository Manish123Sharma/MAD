import 'package:bloc_demo/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Operations extends StatelessWidget {
  const Operations({Key? key}) : super(key: key);
// BLOC Cubit, Get the instance of BLOC Cubit
  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = BlocProvider.of<CounterCubit>(context);
    return Container(
      child: ElevatedButton(
        child: const Text('Plus'),
        onPressed: () {
          cubit.plus();
        },
      ),
    );
  }
}
