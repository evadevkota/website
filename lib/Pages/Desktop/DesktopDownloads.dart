import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/DesktopSignIn.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class DesktopDownloads extends StatefulWidget {
  @override
  _DesktopDownloadsState createState() => _DesktopDownloadsState();
}

class _DesktopDownloadsState extends State<DesktopDownloads> {
  @override
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
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 20, 10, 10),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        290, 0, 10, 10),
                                                    child: Text(
                                                      "Download",
                                                      style: TextStyle(
                                                        height: 2,
                                                        fontSize: 70,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            "SanFrancisco",
                                                      ),
                                                    )),
                                                Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        60, 10, 10, 10),
                                                    child: Text(
                                                      "Download the latest versions of our software for the available software ",
                                                      style: TextStyle(
                                                        height: 1.2,
                                                        fontSize: 25,
                                                        fontFamily: "SanFran",
                                                      ),
                                                    )),
                                                Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        200, 10, 10, 10),
                                                    child: Text(
                                                      "More Operating system will be added soon",
                                                      style: TextStyle(
                                                        height: 1.2,
                                                        fontSize: 25,
                                                        fontFamily: "SanFran",
                                                      ),
                                                    ))
                                              ])),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 50, 10, 10),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          150, 20, 10, 10),
                                                  child: new Image.asset(
                                                    "Windows.png",
                                                    width: 150,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 120, 10, 10),
                                                  child: new Image.asset(
                                                    "img/download.png",
                                                    width: 40,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          120, 0, 10, 10),
                                                  child: new Image.asset(
                                                    "mac.png",
                                                    width: 150,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 120, 10, 10),
                                                  child: new Image.asset(
                                                    "img/download.png",
                                                    width: 40,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          100, 0, 10, 0),
                                                  child: new Image.asset(
                                                    "linux.png",
                                                    width: 150,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 120, 10, 10),
                                                  child: new Image.asset(
                                                    "img/download.png",
                                                    width: 40,
                                                  ),
                                                ),
                                              ])),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              80, 50, 50, 50),
                                          child: Container(
                                              width: 300,
                                              height: 50,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                ),
                                                color: Color.fromRGBO(
                                                    9, 204, 91, 1),
                                                onPressed: () async {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              DesktopSignIn()));
                                                },
                                                child: Text("Download",
                                                    style: TextStyle(
                                                      fontFamily: "Raleway",
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                    )),
                                              ))),
                                    ],
                                  ),
                                ),
                              ])),
                      Padding(
                          padding: EdgeInsets.fromLTRB(80, 50, 50, 50),
                          child: Container(
                              width: 300,
                              height: 50,
                              child: OutlineButton(
                                color: Colors.black,
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  'Requirements',
                                  style: TextStyle(fontSize: 30),
                                ),
                                onPressed: () {
                                  _showMaterialDialog();
                                },
                              ))),
                      FooterPanel()
                    ])))));
  }

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [],
    );
  }

  void _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(300.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Requirement',
                          style: TextStyle(fontSize: 20.0, height: 4))
                    ]),
                    Column(children: [
                      Text('Windows',
                          style: TextStyle(fontSize: 20.0, height: 4))
                    ]),
                    Column(children: [
                      Text('Mac', style: TextStyle(fontSize: 20.0, height: 4))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('Processor',
                          style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                    Column(children: [
                      Text('2 GHz', style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                    Column(children: [
                      Text('2 GHz/M1 (recommended)',
                          style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('Ram', style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                    Column(children: [
                      Text('8 GB', style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                    Column(children: [
                      Text('8 GB', style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('Storage',
                          style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                    Column(children: [
                      Text('8 GB', style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                    Column(children: [
                      Text('10 GB', style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('OS', style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                    Column(children: [
                      Text('Window 10 or later',
                          style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                    Column(children: [
                      Text('OsX10 or recent',
                          style: TextStyle(fontSize: 15.0, height: 2))
                    ]),
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
