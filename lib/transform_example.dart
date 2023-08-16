import 'dart:math' as math;
import 'package:flutter/material.dart';

class TransformExample extends StatelessWidget {
  const TransformExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColoredBox(
                    color: Colors.black,
                    child: Transform(
                      alignment: Alignment.topRight,
                      transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: const Color(0xFFE8581C),
                        child: const Text('Apartment for rent!'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Transform.rotate(
                    angle: math.pi / 4, // 45 deg
                    child: const FlutterLogo(
                      size: 100.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Transform.scale(
                    scale: 3.5,
                    child: const FlutterLogo(),
                  ),
                  const SizedBox(height: 20.0),
                  Transform.translate(
                    offset: const Offset(50, 50),
                    child: const FlutterLogo(
                      size: 100,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Transform(
                    transform: Matrix4.skewX(0.5),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.01)
                      ..rotateX(0.6),
                    alignment: FractionalOffset.center,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
