import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFeatures.dart';
import 'package:explore/Pages/Desktop/DesktopHome.dart';
import 'package:explore/Pages/Desktop/DesktopSignIn.dart';
import 'package:explore/Pages/Desktop/DesktopTutorial.dart';
import 'package:explore/Pages/Desktop/desktopcarrer.dart';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Drawer(
            child: Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 20, 0),
      child: Column(children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'icons/home.png',
            height: 30,
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DesktopHome()));
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text('Feature',
              style: TextStyle(
                fontSize: 20,
              )),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'icons/features.png',
            height: 30,
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DesktopFeatures()));
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text(
            'DesktopDownloads',
            style: TextStyle(fontSize: 20),
          ),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'icons/DesktopDownloads.png',
            height: 30,
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DesktopDownloads()));
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text(
            'Career',
            style: TextStyle(fontSize: 20),
          ),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'icons/career.png',
            height: 30,
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DesktopCareer()));
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text(
            'Tutorial',
            style: TextStyle(fontSize: 20),
          ),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'icons/tutorial.png',
            height: 30,
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DesktopTutorial()));
          },
        ),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            title: Text(
              'Sign In',
              style: TextStyle(fontSize: 20),
            ),
            hoverColor: Color.fromRGBO(194, 236, 255, 1),
            leading: Image.asset(
              'icons/sign-in.png',
              height: 30,
            ),
            onTap: () {}),
      ]),
    )));
  }
}
