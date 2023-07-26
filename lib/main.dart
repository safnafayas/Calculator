import 'package:flutter/material.dart';
import 'package:nug/ex.dart';
import 'package:nug/f1.dart';
import 'package:nug/sample.dart';
import 'package:nug/sample1.dart';

import '';
import 'C.dart';
import 'form.dart';
import 'gridView.dart';
import 'lisrview1.dart';
import 'listTile.dart';
import 'listview.dart';
import 'listviewBuilder.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  theme:ThemeData(
    appBarTheme: AppBarTheme(color: Colors.cyan),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
    useMaterial3: true,


  ),
  home:Calc(),
      debugShowCheckedModeBanner: false,

    );
  }
}
