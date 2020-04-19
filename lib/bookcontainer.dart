import 'package:book_demo/constants.dart';
import 'package:flutter/material.dart';

class Bookcontainer extends StatelessWidget {
  Bookcontainer({this.booklabel, this.bookname, this.onClick});
  final String booklabel;
  final String bookname;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Boxlayout(onClick: onClick, booklabel: booklabel, bookname: bookname),
    );
  }
}

class Boxlayout extends StatelessWidget {
  const Boxlayout({
    Key key,
    @required this.onClick,
    @required this.booklabel,
    @required this.bookname,
  }) : super(key: key);

  final Function onClick;
  final String booklabel;
  final String bookname;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          height: 180,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kCardContainercolor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/$booklabel.png'),
                Text(
                  bookname,
                  style: kCardContainertextStyle,
                ),
              ],
            ),
          )),
    );
  }
}
