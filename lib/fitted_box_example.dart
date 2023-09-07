import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Dengan fittedBox , BoxFit.fill'),
                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.blue,
                      child: const FittedBox(
                        fit: BoxFit.fill,
                        child: FlutterLogo(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Dengan fittedBox , BoxFit.cover'),
                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.blue,
                      child: const FittedBox(
                        fit: BoxFit.cover,
                        child: FlutterLogo(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Dengan fittedBox , BoxFit.scaleDown'),
                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.blue,
                      child: const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: FlutterLogo(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Column(
                  children: [
                    const Text('tanpa fittedBox '),
                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.blue,
                      child: const FlutterLogo(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
