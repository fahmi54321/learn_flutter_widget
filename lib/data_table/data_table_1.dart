import 'package:flutter/material.dart';

class DataTableExample1 extends StatelessWidget {
  const DataTableExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: DataTable(
            showBottomBorder: true,
            columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Name',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                numeric: true,
                label: Expanded(
                  child: Text(
                    'Age',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Role',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                selected: true,
                cells: <DataCell>[
                  DataCell(
                    Text('Sarah'),
                    showEditIcon: true,
                  ),
                  DataCell(Text('19'), placeholder: true),
                  DataCell(Text('Student')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Janine')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('William')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
