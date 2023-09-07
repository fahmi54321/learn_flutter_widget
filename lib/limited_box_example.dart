import 'package:flutter/material.dart';

class LimitedBoxExample extends StatelessWidget {
  const LimitedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text('Max height = 300.0'),
              const SizedBox(height: 20.0),
              Container(
                color: Colors.grey,
                child: LimitedBox(
                  maxHeight: 300.0,
                  child: ListView(
                    children: [
                      for (var i = 0; i < 100; i++)
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                            children: [
                              const Text('Max height = 50.0'),
                              LimitedBox(
                                maxHeight: 50.0,
                                child: Container(
                                  color: i.isOdd ? Colors.green : Colors.red,
                                  child: Text(
                                      'Data ${i + 1}\n Data test\n Data test 2\n Data Test 3'),
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
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
