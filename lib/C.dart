import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart'; // Import the math_expressions package


class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _input = '';
  double _result = 0.0;

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _input = '';
        _result = 0.0;
      } else if (buttonText == '=') {
        try {
          _result = evalExpression(_input);
          _input = _result.toString();
        } catch (e) {
          _input = 'Error';
        }
      } else {
        _input += buttonText;
      }
    });
  }

  double evalExpression(String expression) {
    try {
      Parser p = Parser();
      Expression exp = p.parse(expression);
      ContextModel cm = ContextModel();
      double evalResult = exp.evaluate(EvaluationType.REAL, cm);
      return double.parse(evalResult.toStringAsFixed(2));
    } catch (e) {
      throw Exception("Invalid expression");
    }
  }
  List<String> buttons = [
    '7', '8', '9', '/',
    '4', '5', '6', '*',
    '1', '2', '3', '-',
    'C', '0', '=', '+'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                _input,
                style: TextStyle(fontSize: 62.0,color: Colors.white),
              ),
            ),
          ),
          Divider(height: 1.0),
          Expanded(
          flex: 2,
            child: Container(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: buttons.length,
                itemBuilder: (context, index) {

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.amber.shade400
                       ),
                      child: Text(
                        buttons[index],
                        style: TextStyle(fontSize: 40.0,color: Colors.white),
                      ),
                      onPressed: () {
                        _onButtonPressed(buttons[index]);
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
