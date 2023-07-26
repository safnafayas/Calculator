import 'package:flutter/material.dart';
import 'package:nug/form.dart';

import 'f1.dart';
import 'gridbuilder.dart';


class PageViewExample extends StatelessWidget {
  PageController controller =PageController(
    initialPage: 1
  );
  final List<Widget> pages = [
    FormPage(),
    Form1(),
    GridViewEx2()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Example'),
      ),
      body: PageView(
        controller: controller,
        children:[
          FormPage(),
          Form1(),
          GridViewEx2()
        ]
      ),
    );
  }
}
