import 'package:flutter/material.dart';

const kCardContainercolor = Color(0xffb5e6eb);
const kbackgroundColor = Color(0xffdaf2f5);

const kCardContainertextStyle = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w600,
  fontFamily: 'Roboto',
);

final kboxDecorationstyle1 = BoxDecoration(
  color: kCardContainercolor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  ),
);

final kCardDecoration= BoxDecoration(
            color: kCardContainercolor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            ),);

