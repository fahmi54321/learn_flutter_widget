import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/appbar/appbar_1.dart';
import 'package:learn_flutter_widget/appbar/appbar_2.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

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
                      builder: (_) => AppBarExample1(),
                    ),
                  );
                },
                child: const Text('Appbar 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AppBarExample2(),
                    ),
                  );
                },
                child: const Text('Appbar 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
