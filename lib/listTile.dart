import 'package:flutter/material.dart';
class Listile extends StatelessWidget {
  const Listile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('John Doe'),
            subtitle: Text('johndoe@example.com'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Do something when the list tile is tapped
              print('List tile tapped');
            },
          ),
          Divider(), // Optional divider to separate list tiles
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Jane Smith'),
            subtitle: Text('janesmith@example.com'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Do something when the list tile is tapped
              print('List tile tapped');
            },
          ),
          Divider(), //
        ],
      ),
    );
  }
}
