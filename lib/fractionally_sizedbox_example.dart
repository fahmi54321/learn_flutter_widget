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
              const Text('widthFactor = 0.7, heightFactor = 0.2'),
              Flexible(
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  heightFactor: 0.1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "PRESS HERE",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text('widthFactor = 0.4'),
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
