import 'package:flutter/material.dart';

import 'datatable.dart';
import 'listview.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  var _selectedIndex=0;
  List _pages=[
    ListViewEx(),
    MyDataTableApp(),
    Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red[100],
        child: Center(child: Text('Favourites Page'))),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Favourites'),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },

      )
      ,
    );
  }

}
