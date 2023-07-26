import 'package:flutter/material.dart';
import 'package:nug/lottie.dart';

import 'listTile.dart';
class BootomNav extends StatefulWidget {
  const BootomNav({super.key});

  @override
  State<BootomNav> createState() => _BootomNavState();
}

class _BootomNavState extends State<BootomNav> {
  var selected=0;
  List pages=[
    Listile(),
    Lottie1(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selected),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add)),
          BottomNavigationBarItem(icon: Icon(Icons.add)),

        ],
        onTap: (index){
          setState(() {
            selected=index;
          });
        }
      ),

    );
  }
}
