import 'package:flutter/material.dart';
class TabBarExample2 extends StatefulWidget {
  const TabBarExample2({super.key});

  @override
  State<TabBarExample2> createState() => _TabBarExample2State();
}

class _TabBarExample2State extends State<TabBarExample2> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length:4 ,
 
      child: SafeArea(
        child: Scaffold(
          
          body: Column(
            children: [ TabBar(
          tabs: [
          Tab(child: Text('calls'),
          icon: Icon(Icons.phone),),
          Tab(child: Text('Status'),
            icon: Icon(Icons.phone_android_sharp),),
          Tab(child: Text('Chats'),
            icon: Icon(Icons.chat),),

          ],
            ),
              Expanded(
                child: const TabBarView(
                  children: [
                    //HotelPage(),
                    Center(child: Text('My calls')) ,
                    Center(child: Text('My Statuses')) ,
                    Center(child: Text('My Chats')) ,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
