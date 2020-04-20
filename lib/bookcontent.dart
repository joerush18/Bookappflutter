import 'package:book_demo/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class BookContent extends StatelessWidget {
final String booklabel;
final String titleofbook;
final String authorname;
 BookContent({this.authorname,this.booklabel,this.titleofbook});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Icon(Icons.add_shopping_cart),
        ],
        //shape:,
        // leading: Icon(Icons.menu),
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
      extendBodyBehindAppBar: false,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height - 200,
                decoration: BoxDecoration(
                    color: kCardContainercolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                      topRight: Radius.circular(150),
                    )),
              ),
            ),
            Column(
              children: <Widget>[
                Align(
                  child: CircleAvatar(
                    radius: 120,
                    backgroundColor: kCardContainercolor,
                    child: Image.asset(
                      'images/$booklabel.png',
                      height: 180,
                      width: 180,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),

                //      SizedBox(height: 5),
                Divider(color: kbackgroundColor, thickness: 5),
                Row(
                  children: <Widget>[
                    SizedBox(width: MediaQuery.of(context).size.width / 4),
                    Icon(
                      Icons.star,
                      size: 40,
                    ),
                    Icon(Icons.star, size: 40),
                    Icon(Icons.star, size: 40),
                    Icon(Icons.star_half, size: 40),
                    Icon(Icons.star_border, size: 40),
                  ],
                ),
                Divider(color: kbackgroundColor, thickness: 5),
                Text(
                  titleofbook,
                  style: kAppbarStyletext.copyWith(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(authorname,
                    style: kCardContainertextStyle.copyWith(
                      color: Colors.black38,
                    )),
                Divider(color: kbackgroundColor, thickness: 10),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: SizedBox(
                    height: 126,
                    child: Text(
                        'As an intellectual object, a book is prototypically a composition of such great length that it takes a considerable investment of time to compose and a still considerable, though not so extensive, investment of time to read. This sense of book has a restricted and an unrestricted sense. In the restricted sense.',
                        style: kCardContainertextStyle.copyWith(
                          color: Colors.black54,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          width: 120,
                          height: 50,
                          child: RaisedButton(
                            color: kbackgroundColor,
                            onPressed: () {},
                            child: Text(
                              'ReadMore',
                              style: kCardContainertextStyle,
                            ),
                            elevation: 2,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: RaisedButton(
                            color: kbackgroundColor,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'GoBack',
                              style: kCardContainertextStyle,
                            ),
                            elevation: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
