import 'package:flutter/material.dart';
import 'bookcontent.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'constants.dart';

class BottomNavigationDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: [
        Center(
          child: GestureDetector(
            child: Icon(Icons.home,size:30),
            onTap: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BookContent(
                      booklabel: 'place',
                      authorname: 'c-Joerush',
                      titleofbook: 'This is Home button',
                    );
                  },
                ),
              );
            },
          ),
        ),
        Center(child: Icon(Icons.message),),
        Center(child: Icon(Icons.phone)),
      ],
      onTap: (context) {},
      backgroundColor: kbackgroundColor,
      buttonBackgroundColor: kCardContainercolor,
      animationCurve: null,
      animationDuration: null,
      height: 60,
      index: 1,
    );
  }
}
