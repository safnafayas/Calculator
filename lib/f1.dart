import 'package:flutter/material.dart';
class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  var namecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:namecontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText:'Enter your name',
                border: OutlineInputBorder(),
                hintText: 'Name'
              ),

            ),
          )
        ],
      ),
    );
  }
}

