import 'package:flutter/material.dart';

class PhysicalModelExample extends StatelessWidget {
  const PhysicalModelExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhysicalModel(
          color: Colors.black, // todo 1
          elevation: 30.0, // todo 2
          shadowColor: Colors.red, // todo 3
          // shape: BoxShape.circle, // todo 4
          borderRadius: BorderRadius.circular(2.0),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
