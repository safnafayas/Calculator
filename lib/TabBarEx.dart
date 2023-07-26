import 'package:flutter/material.dart';
class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length:4 ,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Tab Bar Example'),

          bottom: const TabBar(
            tabs: [
              Tab(child: Text('calls'),
                icon: Icon(Icons.phone),),
              Tab(child: Text('Status'),
                icon: Icon(Icons.phone_android_sharp),),
              Tab(child: Text('Chats'),
                icon: Icon(Icons.chat),),
              Tab(child: Text('Camera'),
                icon: Icon(Icons.camera),),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            //HotelPage(),
            Center(child: Text('My calls')) ,
            Center(child: Text('My Statuses')) ,
            Center(child: Text('My Chats')) ,
            Center(child: Text('My Camera')) ,
          ],
        ),
      ),
    );
  }
}
