import 'package:flutter/material.dart';

class LimitedBoxExample extends StatelessWidget {
  const LimitedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            LimitedBox(
              maxHeight: 300.0,
              child: ListView(
                children: [
                  for (var i = 0; i < 100; i++)
                    LimitedBox(
                      maxHeight: 50.0,
                      child: Container(
                        color: i.isOdd ? Colors.green : Colors.red,
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
