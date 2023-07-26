import 'package:flutter/material.dart';



class MyDataTableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable Example'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Age')),
              DataColumn(label: Text('Country')),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('John')),
                DataCell(Text('25')),
                DataCell(Text('USA')),
              ]),
              DataRow(cells: [
                DataCell(Text('Emily')),
                DataCell(Text('28')),
                DataCell(Text('Canada')),
              ]),
              DataRow(cells: [
                DataCell(Text('David')),
                DataCell(Text('22')),
                DataCell(Text('UK')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
