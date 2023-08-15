import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropfilterExample extends StatelessWidget {
  const BackdropfilterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Text('0' * 10000),
            Center(
              child: ClipRect(
                // <-- clips to the 200x200 [Container] below
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: const Text('Hello World'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
