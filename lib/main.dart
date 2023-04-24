import 'package:flutter/material.dart';
import 'package:bloc_cubit/color_changer_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(create: (context) => ColorChangerCubit(),
        child: Center(
          child: ColorChanger(),
        ),
      ),
    );
  }
}
