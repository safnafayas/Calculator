import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Lottie1 extends StatelessWidget {
  const Lottie1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie Animation'),
      ),
      body: Center(
        child: Lottie.asset(
          'assets/animation_llggalaj.zip', // Replace with your animation file path
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );



  }
}
