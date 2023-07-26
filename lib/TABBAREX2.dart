import 'package:flutter/material.dart';

import 'form.dart';
import 'listviewBuilder.dart';



class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.abc_rounded)),
              Tab(icon: Icon(Icons.abc_rounded)),
              Tab(icon: Icon(Icons.abc_rounded)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            listbuilderEx(),
            FormPage(),
            FormPage(),
          ],

        ),
      ),
    );
  }
}
