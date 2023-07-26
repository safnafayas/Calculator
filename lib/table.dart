import 'package:flutter/material.dart';



class MyTableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Example'),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(), // Add borders to the table cells
          children: const [
            TableRow(
              children: [
                TableCell(child: Center(child: Text('Header 1'))),
                TableCell(child: Center(child: Text('Header 2'))),
                TableCell(child: Center(child: Text('Header 3'))),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: Center(child: Text('Cell 1.1'))),
                TableCell(child: Center(child: Text('Cell 1.2'))),
                TableCell(child: Center(child: Text('Cell 1.3'))),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: Center(child: Text('Cell 2.1'))),
                TableCell(child: Center(child: Text('Cell 2.2'))),
                TableCell(child: Center(child: Text('Cell 2.3'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
