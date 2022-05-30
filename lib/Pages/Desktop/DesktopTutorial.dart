import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/DesktopSignIn.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'dart:ui';

class DesktopTutorial extends StatefulWidget {
  @override
  _DesktopTutorialState createState() => _DesktopTutorialState();
}

class _DesktopTutorialState extends State<DesktopTutorial> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            key: scaffoldKey,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: AppBar(
                leading: IconButton(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    icon: Image.asset('icons/drawer.png'),
                    onPressed: () {
                      scaffoldKey.currentState.openDrawer();
                    }),
                flexibleSpace: Container(
                  width: 200,
                  height: 100,
                  padding: const EdgeInsets.fromLTRB(0, 05, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                        "fileLOGO.jpg",
                      ),
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                actions: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 13, 30, 0),
                      child: FlatButton(
                        height: 100,
                        minWidth: 100,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(60)),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DesktopDownloads()));
                        },
                        child: Text("DesktopDownloads",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      )),
                ],
              ),
            ),
            extendBodyBehindAppBar: true,
            drawer: MainDrawer(),
            body: Container(
              constraints: BoxConstraints.expand(),
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(200, 150, 150, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              width: 1500,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ]),
                              child: Column(children: [
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 20, 10, 10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      300, 0, 10, 10),
                                              child: Text(
                                                "Tutorial",
                                                style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: 70,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "SanFrancisco",
                                                ),
                                              )),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 10, 10),
                                              child: Text(
                                                "To learn how to use paradox, we have some quick guide for you to get started. ",
                                                style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: 25,
                                                  fontFamily: "SanFran",
                                                ),
                                              )),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      35, 10, 10, 10),
                                              child: Text(
                                                "And for more advanced and developer focused guides we have provided",
                                                style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: 25,
                                                  fontFamily: "SanFran",
                                                ),
                                              ))
                                        ])),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        60, 10, 10, 10),
                                    child: Text(
                                      "some sample videos and documentation.",
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: 25,
                                        fontFamily: "SanFran",
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        100, 60, 10, 10),
                                    child: Text(
                                      "Learn how to use the software and take the advantage of ",
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: 25,
                                        fontFamily: "SanFran",
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        60, 10, 10, 10),
                                    child: Text(
                                      "the powerful parallel computing. ",
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: 25,
                                        fontFamily: "SanFran",
                                      ),
                                    )),
                                Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(70, 50, 50, 50),
                                    child: Container(
                                        width: 300,
                                        height: 50,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                          color: Color.fromRGBO(17, 37, 105, 1),
                                          onPressed: () async {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DesktopSignIn()));
                                          },
                                          child: Text("Get Started",
                                              style: TextStyle(
                                                fontFamily: "Raleway",
                                                fontSize: 30,
                                                color: Colors.white,
                                              )),
                                        ))),
                              ])),
                        ],
                      ),
                    ),
                    FooterPanel()
                  ])),
            )));
  }
}
