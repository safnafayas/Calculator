import 'package:flutter/material.dart';
class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var namecontroller=TextEditingController();
  var passcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed:(){}, child: Text('Click ME'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed:(){}, child:Text('Text Button')),
            ),
            IconButton(onPressed:(){}, icon:Icon(Icons.add)),
            ButtonBar(
              children: [
                ElevatedButton(onPressed:(){}, child: Text('Click ME'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                ElevatedButton(onPressed:(){}, child: Text('Click ME'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                ElevatedButton(onPressed:(){}, child: Text('Click ME'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                child: Container(height: 30,
                width: 100,
                color: Colors.lightBlueAccent,
                child: Text('click me'),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){},
                child: Container(height: 30,
                  width: 100,
                  color: Colors.lightBlueAccent,
                  child: Text('click me'),),
              ),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
               keyboardType: TextInputType.text,
               controller:namecontroller ,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText:'Enter your name',
                 labelText: 'Name'
               ),
             ),

           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType:TextInputType.number,
                obscureText: true,
                obscuringCharacter: '.',
                controller: passcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password'
                ),
              ),
            ),
            Card(
              child: Container(

                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(image:
                  NetworkImage('')),
                ),
              ),
            )



          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),

    );
  }
}
