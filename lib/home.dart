import 'package:flutter/material.dart';
import 'bookcontainer.dart';
import 'constants.dart';
import 'drawerdesign.dart';
import 'bookcontent.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.add_shopping_cart),
        ],
        //shape:,
      //  leading: Icon(Icons.menu),
        title: Center(
          child: Text(
            'E-BOOKs',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: 'WorkSans'),
          ),
        ),
      ),
    drawer: DrawerDesign(),


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
                    SizedBox(
                      height: 10,
                    ),
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
                                      return BookContent();
                                    },
                                  ),
                                );
                              },
                            ),
                            Bookcontainer(
                              booklabel: 'b2',
                              bookname: 'Graphic D',
                            ),
                            Bookcontainer(
                              booklabel: 'b3',
                              bookname: 'Design',
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
                            ),
                            Bookcontainer(
                              booklabel: 'b5',
                              bookname: 'Type D',
                            ),
                            Bookcontainer(
                              booklabel: 'b6',
                              bookname: 'Love D',
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
                            ),
                            Bookcontainer(
                              booklabel: 'b8',
                              bookname: 'Portfolio D',
                            ),
                            Bookcontainer(
                              booklabel: 'b9',
                              bookname: 'Thinking D',
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
                            ),
                            Bookcontainer(
                              booklabel: 'nice',
                              bookname: 'Empty',
                            ),
                            Bookcontainer(
                              booklabel: 'hi',
                              bookname: 'Empty',
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


