import 'package:flutter/material.dart';
import 'bookcontainer.dart';
import 'constants.dart';
import 'bookcontent.dart';
import 'BottomNavigation.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    // GlobalKey _bottomNavigationKey = GlobalKey();
    //int _page=0;
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Icon(Icons.add_shopping_cart),
        ],
        //shape:,
        leading: Icon(Icons.menu),
        title: Center(
          child: Text(
            'E-BOOKs',
            style: kAppbarStyletext,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationDesign(),
      extendBodyBehindAppBar: false,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        // height: double.infinity,
                        // width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Bookcontainer(
                              bookname: 'Vector D',
                              booklabel: 'b1',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b1',
                                        authorname: 'JamesDarphin',
                                        titleofbook: 'Vector Designing',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'b2',
                              bookname: 'Graphic D',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b2',
                                        authorname: 'Rohit Jain',
                                        titleofbook: 'Graphic Designing',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'b3',
                              bookname: 'Design',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b3',
                                        authorname: 'Don Norman',
                                        titleofbook: 'Design Everyday',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //   height: double.infinity,
                        //   width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Bookcontainer(
                              booklabel: 'b4',
                              bookname: 'Brand D',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b4',
                                        authorname: 'Alan John',
                                        titleofbook: 'Brand Designing',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'b5',
                              bookname: 'Type D',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b5',
                                        authorname: 'Mark Anderson',
                                        titleofbook: 'Type Designing',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'b6',
                              bookname: 'Love D',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b6',
                                        authorname: 'khalil Ahmed',
                                        titleofbook: 'Logo Desigining',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        //   decoration: kboxDecorationstyle1,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //   height: double.infinity,
                        //   width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Bookcontainer(
                              booklabel: 'b7',
                              bookname: 'Creative D',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b7',
                                        authorname: 'Steve Robins',
                                        titleofbook: 'Creative Design',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'b8',
                              bookname: 'Portfolio D',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b8',
                                        authorname: 'Michael Janet',
                                        titleofbook: 'Burn Portfolio',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'b9',
                              bookname: 'Thinking D',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'b9',
                                        authorname: 'Joe Rush',
                                        titleofbook: 'Design Thinking',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),

                        // decoration: kboxDecorationstyle1,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //   height: double.infinity,
                        //   width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Bookcontainer(
                              booklabel: 'hello',
                              bookname: 'Empty',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'hi',
                                        authorname: 'Jacob',
                                        titleofbook: 'Empty',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'nice',
                              bookname: 'Empty',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'hi',
                                        authorname: 'Jacob',
                                        titleofbook: 'Empty',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'hi',
                              bookname: 'Empty',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BookContent(
                                        booklabel: 'hi',
                                        authorname: 'Jacob',
                                        titleofbook: 'Empty',
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),

                        // decoration: kboxDecorationstyle1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
