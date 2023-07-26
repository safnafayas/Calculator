import 'package:flutter/material.dart';
class MyWrapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget Example'),
      ),
      body: const Center(
        child: Wrap(
          spacing: 8.0, // Horizontal spacing between items
          runSpacing: 8.0, // Vertical spacing between lines
          alignment: WrapAlignment.center,
          children: [
            Chip(label: Text('Tag 1')),
            Chip(label: Text('Tag 2')),
            Chip(label: Text('Tag 3')),
            Chip(label: Text('Tag 4')),
            Chip(label: Text('Tag 5')),
            Chip(label: Text('Tag 6')),
            Chip(label: Text('Tag 7')),
            Chip(label: Text('Tag 7')),
            Chip(label: Text('Tag 7')),
            Chip(label: Text('Tag 7')),
            Chip(label: Text('Tag 7')),
            Chip(label: Text('Tag 8')),
          ],
        ),
      ),
    );
  }
}
