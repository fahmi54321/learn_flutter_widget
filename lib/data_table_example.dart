import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/data_table/data_table_1.dart';
import 'package:learn_flutter_widget/data_table/data_table_2.dart';

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

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
                      builder: (_) => const DataTableExample1(),
                    ),
                  );
                },
                child: const Text(
                  'Data table 1',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DataTableExample2(),
                    ),
                  );
                },
                child: const Text(
                  'Data table 2',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
