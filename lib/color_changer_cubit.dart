import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorChangerCubit extends Cubit<Color> {
  ColorChangerCubit() : super(Colors.grey);

  void changeColor() {
    print("I am in");
    emit(Color(Random().nextInt(0xFFFFFFFF)));
  }
}

class ColorChanger extends StatelessWidget {
  const ColorChanger({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Changer'),
      ),
      body: Center(
        child: BlocBuilder<ColorChangerCubit, Color>(
            builder: (context, containerColor) {
          return GestureDetector(
            onTap: () {
              context.read<ColorChangerCubit>().changeColor();
            },
            child: Container(
              width: 200,
              height: 200,
              color: containerColor,
              child: const Center(
                child: Text(
                  'Tap to change color',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
