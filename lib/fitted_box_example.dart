import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.blue,
                child: const FittedBox(
                  fit: BoxFit.fill,
                  child: FlutterLogo(),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 200,
                width: 100,
                color: Colors.blue,
                child: const FlutterLogo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
