import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/aspect_ratio/aspect_ratio_1.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AspectRatio1(),
                    ),
                  );
                },
                child: const Text('Aspect ratio 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
