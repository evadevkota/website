import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:explore/Pages/Strings.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class DesktopAbout extends StatefulWidget {
  @override
  _DesktopAboutState createState() => _DesktopAboutState();
}

class _DesktopAboutState extends State<DesktopAbout> {
  @override
  var scaffoldKey = GlobalKey<ScaffoldState>();

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
                        child: Text("Download",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      )),
                ],
              ),
            ),
            extendBodyBehindAppBar: true,
            drawer: MainDrawer(),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(05, 10, 10, 0),
                child: Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 120, 10, 30),
                          child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(500, 60, 0, 0),
                                        child: Text("Prince Lab",
                                            style: TextStyle(
                                                fontSize: 100,
                                                fontFamily: 'SanFrancisco',
                                                fontWeight: FontWeight.w900)))
                                  ]),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(300, 20, 300, 0),
                                      child: Text(Strings.about2,
                                          style: TextStyle(
                                              fontSize: 20,
                                              letterSpacing: 2,
                                              fontFamily: 'SanFrancisco',
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  )
                                ],
                              ))),
                      Container(
                          child: Column(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(Strings.about5,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontFamily: 'SanFrancisco',
                                    fontWeight: FontWeight.w900))),
                      ])),
                      Container(
                          child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(150, 80, 0, 0),
                            child: Container(
                                child: Column(children: [
                              Image.asset(
                                'python.png',
                                height: 200,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                                child: Text(Strings.about6,
                                    style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 2,
                                        fontFamily: 'SanFrancisco',
                                        fontWeight: FontWeight.bold)),
                              )
                            ]))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(250, 80, 0, 0),
                            child: Container(
                                child: Column(children: [
                              Image.asset(
                                'tensorflow.png',
                                height: 200,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                                child: Text(Strings.about7,
                                    style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 2,
                                        fontFamily: 'SanFrancisco',
                                        fontWeight: FontWeight.bold)),
                              )
                            ]))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(250, 80, 0, 0),
                            child: Container(
                                child: Column(children: [
                              Image.asset(
                                'flutter.png',
                                height: 200,
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                                  child: Text(Strings.about8,
                                      style: TextStyle(
                                          fontSize: 20,
                                          letterSpacing: 2,
                                          fontFamily: 'SanFrancisco',
                                          fontWeight: FontWeight.w900))),
                            ])))
                      ])),
                      Container(
                          child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: Text(Strings.about9,
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: 'SanFrancisco',
                                      fontWeight: FontWeight.w900))),
                          Padding(
                            padding: EdgeInsets.fromLTRB(300, 20, 300, 0),
                            child: Text(Strings.about10,
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 2,
                                    fontFamily: 'SanFrancisco',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(200, 100, 100, 0),
                            child: Text(Strings.about11,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontFamily: 'SanFrancisco',
                                    fontWeight: FontWeight.w900)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(300, 20, 300, 0),
                            child: Text(Strings.about12,
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 2,
                                    fontFamily: 'SanFrancisco',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(200, 100, 100, 0),
                            child: Text(Strings.about13,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontFamily: 'SanFrancisco',
                                    fontWeight: FontWeight.w900)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(300, 20, 300, 0),
                            child: Text(Strings.about14,
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 2,
                                    fontFamily: 'SanFrancisco',
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )),
                      FooterPanel()
                    ])),
              ),
            )));
  }
}
