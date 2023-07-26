import 'package:flutter/material.dart';
import 'package:nug/studentModel.dart';
class listbuilderEx extends StatelessWidget {
  const listbuilderEx({super.key});

  @override
  Widget build(BuildContext context)
  { List names=['sasd','asdasd','dsdsa','dsads''dsdsa','dsadsa','sdfds','fdsfds','fdds','dfdsfsd','fdsfsd','dsfdf'];
  return  SafeArea(
    child: Scaffold(
        body: SizedBox(
          child: ListView.builder(
              itemCount: stud.length,

              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:ListTile(
                    leading: Icon(Icons.person),
                 title: Text(stud[index]['name']),
                    subtitle: Text(stud[index]['email']),
                    trailing: Icon(Icons.arrow_right),
                )
                );
              }

          ),

        )  ),
  );
  }
}