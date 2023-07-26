import 'package:flutter/material.dart';
import 'package:nug/bottons.dart';
import 'package:nug/ex.dart';
import 'package:nug/f1.dart';
import 'package:nug/profile.dart';
import 'package:nug/sample.dart';
import 'package:nug/sample1.dart';
import 'package:nug/tabbar2.dart';
import 'package:nug/table.dart';
import 'package:nug/vertical%20text.dart';
import 'package:nug/wrap.dart';

import '';
import 'BottomNavigationBar.dart';
import 'C.dart';
import 'PageView.dart';
import 'TabBarEx.dart';
import 'datatable.dart';
import 'drawer.dart';
import 'form.dart';
import 'gridView.dart';
import 'gridbuilder.dart';
import 'lisrview1.dart';
import 'listTile.dart';
import 'listview.dart';
import 'listviewBuilder.dart';
import 'lottie.dart';
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
  home:Verticaltext(),
      debugShowCheckedModeBanner: false,

    );
  }
}
