import 'package:book_demo/constants.dart';
import 'package:flutter/material.dart';
import 'home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kbackgroundColor,
      ),
      home: Home2(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
