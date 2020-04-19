import 'package:flutter/material.dart';
import 'constants.dart';

class DrawerDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              margin: EdgeInsets.all(25),
              curve: Curves.elasticIn,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                color: kCardContainercolor,
                //   shape: BoxShape.rectangle,
              ),
              child: Center(
                child: Text('Hello'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              color: kCardContainercolor,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              color: kCardContainercolor,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              color: kCardContainercolor,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.contacts),
                title: Text('About'),
              ),
              color: kCardContainercolor,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.mail),
                title: Text('Contact US'),
              ),
              color: kCardContainercolor,
            ),
          ],
        ),
      ),
    );
  }
}
