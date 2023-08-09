import 'package:flutter/material.dart';

class AspectRatio1 extends StatelessWidget {
  const AspectRatio1({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                BackgroundWidget(
                  ratio: 1 / 1,
                  ratioLabel: '1 : 1',
                ),
                SizedBox(height: 20.0),
                BackgroundWidget(
                  ratio: 1 / 2,
                  ratioLabel: '1 : 2',
                ),
                SizedBox(height: 20.0),
                BackgroundWidget(
                  ratio: 2 / 3,
                  ratioLabel: '2 : 3',
                ),
                SizedBox(height: 20.0),
                BackgroundWidget(
                  ratio: 3 / 2,
                  ratioLabel: '3 : 2',
                ),
                SizedBox(height: 20.0),
                BackgroundWidget(
                  ratio: 3 / 4,
                  ratioLabel: '3 : 4',
                ),
                SizedBox(height: 20.0),
                BackgroundWidget(
                  ratio: 4 / 3,
                  ratioLabel: '4 : 3',
                ),
                SizedBox(height: 20.0),
                BackgroundWidget(
                  ratio: 9 / 16,
                  ratioLabel: '9 : 16',
                ),
                SizedBox(height: 20.0),
                BackgroundWidget(
                  ratio: 16 / 9,
                  ratioLabel: '16 : 9',
                ),
                SizedBox(height: 20.0),
                BackgroundWidget2(
                  ratio: 0.5,
                ),
                SizedBox(height: 20.0),
                BackgroundWidget2(
                  ratio: 2.0,
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  final double ratio;
  final String ratioLabel;
  const BackgroundWidget({
    super.key,
    required this.ratio,
    required this.ratioLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100.0,
      child: AspectRatio(
        aspectRatio: ratio,
        child: Container(
          color: Colors.green,
          child: Center(
            child: Text(
              '$ratioLabel \n $ratio',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundWidget2 extends StatelessWidget {
  final double ratio;
  const BackgroundWidget2({
    super.key,
    required this.ratio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: 100.0,
      height: 100.0,
      child: AspectRatio(
        aspectRatio: ratio,
        child: Container(
          width: 100.0,
          height: 50.0,
          color: Colors.green,
          child: Text('$ratio'),
        ),
      ),
    );
  }
}
