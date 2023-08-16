import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FractionallySizedBox(
                widthFactor: 0.7,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "PRESS HERE",
                  ),
                ),
              ),
              const Flexible(
                child: FractionallySizedBox(heightFactor: 0.1),
              ),
              FractionallySizedBox(
                widthFactor: 0.4,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "PRESS HERE",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
