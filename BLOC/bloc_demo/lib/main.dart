import 'package:bloc_demo/cubit/Cubit_state.dart';
import 'package:bloc_demo/cubit/counter_cubit.dart';
import 'package:bloc_demo/screens/countapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    // home: BlocProvider(
    //   create: (context) => CounterCubit(0),
    //   child: const CountApp(),
    // ),
    home: BlocProvider(
        create: ((context) => CounterCubit(CustomCubitState(0, 0))),
        child: const CountApp(),
        )),
  );
}
