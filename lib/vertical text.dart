import 'package:flutter/material.dart';


class Verticaltext extends StatelessWidget {
  const Verticaltext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vertical Text Example'),
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 3, // Rotate 270 degrees clockwise
          child: Text(
            'Vertical Text',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
        );
  }
}
