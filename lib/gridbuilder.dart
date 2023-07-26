import 'package:flutter/material.dart';
import 'package:nug/studentModel.dart';
class GridViewEx2 extends StatelessWidget {
  const GridViewEx2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context,index){
              var count=(index+1).toString();
              return Card(
                child: Container(
                  height: 100,
                  color: stud[index]['color'],
                  child: Column(
                    children: [
                      Center(child: Text(stud[index]['name'][0],style:TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stud[index]['name'],style:TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stud[index]['email'],style:TextStyle(color: Colors.green,fontSize: 12,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stud[index]['age'].toString(),style:TextStyle(color: Colors.green,fontSize: 12,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              );
            },
            itemCount: stud.length

        )
    );
  }
}
