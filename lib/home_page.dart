import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/absorb_pointer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AbsorbPointerExample(),
                        ),
                      );
                    },
                    child: const Text('Absorb pointer'),
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
