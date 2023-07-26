import 'package:flutter/material.dart';
class GridViewEx extends StatelessWidget {
  const GridViewEx({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        ),
        children: [
          Card(
            elevation: 10,
            child: Container(
              height: 100,

               // color: Colors.lightBlueAccent,
              child: Center(child: Text('One')),
            ),
          ),
          Card(
            elevation: 10,
            child: Container(
              height: 100,

              child: Center(child: Text('Six')),
            ),
          ),
          Card(
            elevation: 10,
            child: Container(
              height: 100,

              child: Center(child: Text('Seven')),
            ),
          ),
          Card(
            elevation: 10,
            child: Container(
              height: 100,

              child: Text('Eight'),
            ),
          ),
          Card(
            elevation: 10,
            child: Container(
              height: 100,

              child: Text('Nine'),
            ),
          ),
          Card(
            elevation: 10,
            child: Container(
              height: 100,

              child: Text('Ten'),
            ),
          ),
        ],
      ),
    );
  }
}
