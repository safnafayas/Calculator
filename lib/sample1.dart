import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart'; // Import the math_expressions package

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String _input='';
  double _result=0.0;
  List buttons=[
    '7','8','9','/',
    '4','5','6','*',
    '1','2','3','-',
    'c','0','=','+',
  ];
  void _onButtonPressed(String buttonText){
    setState(() {
      if(buttonText == 'C'){
        _input='';
        _result=0.0;
      }else if(buttonText=='='){
        try{
          _result = evalExpression(_input);
          _input = _result.toString();
        }
        catch(e){
          _input+= 'Error';
            }
      }else {
        _input += buttonText;
      }
    });
  }
 double evalExpression(String expression){
   try{
     Parser p =Parser();
     Expression exp= p.parse(expression);
     ContextModel cm = ContextModel();
     double evalResult=exp.evaluate(EvaluationType.REAL, cm);
     return double.parse(evalResult.toStringAsFixed(2));
   }
   catch(e){
     throw Exception('Invalid Expression');
   }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('0',style: TextStyle(color: Colors.white,fontSize:62)),
              ),
            ),
          ),
          Divider(height: 1.0,),

          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder:(context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber
                      ),
                      onPressed: (){
                        _onButtonPressed(buttons[index]);
                      }, child: Text(buttons[index],style:TextStyle(fontSize:40,color: Colors.white),)),
                );
              }),
            ),
          )
        ],
      ),


    );
  }
}
