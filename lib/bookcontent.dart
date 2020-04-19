
import 'package:book_demo/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class BookContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text('Hello', style: kCardContainertextStyle),
        ),
      ),
      body:Center(child: Image.asset('images/b1.png')),
    );
  }
}
