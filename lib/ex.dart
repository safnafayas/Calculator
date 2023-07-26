import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10,20,20,30),
            child: Icon(Icons.notifications_none),
          ),


        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,

              ),
              Positioned(
                left: 130,
                top:140,
                child: ClipOval(
                  child: Container(
                    height: 70,
                    width: 70,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg/330px-Tom_Cruise_by_Gage_Skidmore_2.jpg'))

                    ),

                  ),
                ),
              ),
            ],

          ),
          Card(
            elevation: 20,
            child: Container(

              height:100,
              width: 100,
            ),
          ),
          ElevatedButton(
            onPressed:(){},
            child: Text('Click Here'),style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.cyan)),
          ),
          TextButton(onPressed: (){}, child:Text('Hello')),
          IconButton(onPressed: (){}, icon:Icon(Icons.add_a_photo)),
          GestureDetector(
            onTap: (){},
            child: Container(

              height: 50,
              width: 150,
              child: Center(child: Text('Sign In')),
              decoration: BoxDecoration(
                color:Colors.red,
                border: Border.all(width: 10),
                borderRadius: BorderRadius.circular(30)

              ),
            ),
          ),
          ButtonBar(
            children: [
              ElevatedButton(onPressed: (){}, child: Text('Sign In')),  ElevatedButton(onPressed: (){}, child: Text('Sign In')),  ElevatedButton(onPressed: (){}, child: Text('Sign In')),

            ],
          )
        ],
      ),


      drawer: Drawer(),

    );
  }
}
