import 'package:flutter/material.dart';

class IntrinsicHeightWidthExample extends StatelessWidget {
  const IntrinsicHeightWidthExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text('Tanpa IntrinsicHeight'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100.0,
                            width: 50.0,
                            color: Colors.blue,
                          ),
                          Container(
                            height: 200.0,
                            width: 50.0,
                            color: Colors.red,
                          ),
                          Container(
                            height: 150.0,
                            width: 50.0,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Column(
                    children: [
                      const Text('Dengan IntrinsicHeight'),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 100.0,
                              width: 50.0,
                              color: Colors.blue,
                            ),
                            Container(
                              height: 200.0,
                              width: 50.0,
                              color: Colors.red,
                            ),
                            Container(
                              height: 150.0,
                              width: 50.0,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Column(
                    children: [
                      const Text('Tanpa IntrinsicWidth'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50.0,
                            width: 150.0,
                            color: Colors.blue,
                          ),
                          Container(
                            height: 50.0,
                            width: 100.0,
                            color: Colors.red,
                          ),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Column(
                    children: [
                      const Text('Dengan IntrinsicWidth'),
                      IntrinsicWidth(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 50.0,
                              width: 150.0,
                              color: Colors.blue,
                            ),
                            Container(
                              height: 50.0,
                              width: 100.0,
                              color: Colors.red,
                            ),
                            Container(
                              height: 50.0,
                              width: 50.0,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
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
