import 'package:flutter/material.dart';
import 'package:nug/studentModel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
              var student = stud[index];
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
                // Row(
                //   children: List.generate(5, (i) {
                //     return Icon(
                //       Icons.star,
                //       color: i < stud[index]['star'] ? Colors.yellow : Colors.grey,
                //     );
                //   })
                // )
                      RatingBar.builder(
                        initialRating: student['star'].toDouble(),
                        unratedColor: Colors.green,
                        glowColor: Colors.yellowAccent,
                        minRating: 0.5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemBuilder: (context,_) => Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        onRatingUpdate: (newRating) {
                          // Update the rating in your student model
                          student['star'] = newRating.toInt();
                          // Do something with the updated rating value
                          print("New Rating for ${student['name']}: $newRating");
                        },
                      ),
                      RatingBar.builder(
                        initialRating: stud[index]['star'].toDouble(),
                          allowHalfRating: true,
                          itemBuilder: (context,_){
                        return Icon(Icons.star);
                      }, onRatingUpdate: (newRating){

                        stud[index]['star']=newRating.toDouble();
                      })
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
