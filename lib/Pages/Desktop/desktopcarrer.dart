import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/avd.dart';

class DesktopCareer extends StatefulWidget {
  @override
  _DesktopCareerState createState() => _DesktopCareerState();
}

final String assetName = 'step.svg';
final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');

class _DesktopCareerState extends State<DesktopCareer> {
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
                child: Container(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            540, 90, 10, 0),
                                        child: Text(
                                          'Struggle hard Stay Paradox',
                                          style: TextStyle(
                                            fontSize: 50,
                                            fontFamily: 'SanFrancisco',
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            500, 0, 100, 0),
                                        child: Container(
                                          height: 610,
                                          width: 800,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'create.png',
                                                ),
                                                fit: BoxFit.fill),
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      310, 10, 0, 220),
                                                  child: Text('print',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors
                                                              .redAccent
                                                              .shade700))),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      05, 10, 0, 220),
                                                  child: Text('(',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      ))),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      05, 10, 0, 220),
                                                  child: Text('\'',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              Colors.purple))),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      5, 10, 0, 220),
                                                  child: Text('create',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      ))),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      5, 10, 0, 220),
                                                  child: Text('my',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      ))),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      5, 10, 0, 220),
                                                  child: Text('dream',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors
                                                              .blueAccent
                                                              .shade700))),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      05, 10, 0, 220),
                                                  child: Text('\'',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              Colors.purple))),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      05, 10, 10, 220),
                                                  child: Text('\)',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      )))
                                            ],
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Container(
                                        height: 710,
                                        width: 3000,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              end: const Alignment(0.0, -1),
                                              begin: const Alignment(0.0, 0.6),
                                              colors: [
                                                Color.fromRGBO(162, 83, 237, 1),
                                                Color.fromRGBO(255, 127, 0, 1),
                                              ]),
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 60, 0, 0),
                                                child: Container(
                                                  height: 500,
                                                  width: 850,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20)),
                                                    gradient: LinearGradient(
                                                        end: const Alignment(
                                                            0.0, -1),
                                                        begin: const Alignment(
                                                            0.0, 0.6),
                                                        colors: [
                                                          Colors.pink.shade100,
                                                          Colors
                                                              .purple.shade300,
                                                        ]),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(10, 10,
                                                                  10, 10),
                                                          child: Container(
                                                              width: 400,
                                                              height: 500,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black,
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20)),
                                                              ),
                                                              child: Text(
                                                                "10",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        340),
                                                              ))),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(10, 10,
                                                                  10, 10),
                                                          child: Container(
                                                              width: 400,
                                                              height: 500,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20)),
                                                              ),
                                                              child: Container(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          40,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Row(
                                                                      children: [
                                                                        new RotatedBox(
                                                                            quarterTurns:
                                                                                3,
                                                                            child:
                                                                                new Text(
                                                                              "August",
                                                                              style: TextStyle(color: Color.fromRGBO(119, 119, 119, 1), fontSize: 120, fontWeight: FontWeight.bold, fontFamily: "Helvetica"),
                                                                            )),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        new RotatedBox(
                                                                            quarterTurns:
                                                                                3,
                                                                            child:
                                                                                new Text("2021", style: TextStyle(fontSize: 140, fontWeight: FontWeight.bold)))
                                                                      ])))),
                                                    ],
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                        child: Row(children: [
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Column(children: [
                                            Container(
                                              height: 170,
                                              width: 400,
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                            Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 200, 0, 0),
                                                height: 60,
                                                width: 400,
                                                color: Colors.black),
                                          ])),
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Container(
                                              height: 700,
                                              width: 1000,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      'career.png',
                                                    ),
                                                    fit: BoxFit.fill),
                                              ),
                                              child: Row(children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Row(children: [
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(270,
                                                                    0, 0, 0),
                                                            child: SvgPicture
                                                                .asset(
                                                              assetName,
                                                              height: 700,
                                                            )),
                                                      ])),
                                                )
                                              ])))
                                    ])),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(550, 100, 0, 0),
                                        child: Text('Your',
                                            style: TextStyle(
                                                fontSize: 130,
                                                fontWeight: FontWeight.bold))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(740, 0, 0, 0),
                                        child: Text('Journey',
                                            style: TextStyle(
                                                fontSize: 130,
                                                fontWeight: FontWeight.bold))),
                                    Container(
                                        padding:
                                            EdgeInsets.fromLTRB(150, 0, 100, 0),
                                        child: Row(children: [
                                          Container(
                                            width: 500,
                                            height: 600,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 10, 0),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 30, 0, 0),
                                                      child: Text(
                                                        'Software Engineer (QT/UI)',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 30),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 30, 10, 0),
                                                      child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 30,
                                                          width: 330,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .black,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            15),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                  )),
                                                          child: Text(
                                                            'Can you build a dropbox-like app people will use ?',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 30, 10, 0),
                                                      child: Text(
                                                        'Qualifications',
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                    Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                20, 10, 10, 10),
                                                        width: 330,
                                                        child: Divider(
                                                          thickness: 4,
                                                          color: Colors.black,
                                                        )),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 120, 0),
                                                        child: Text(
                                                          ' QT5 or similar SDK experience',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      )
                                                    ]),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 212, 0),
                                                        child: Text(
                                                          'C++ coding skills',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      )
                                                    ]),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 200, 0),
                                                        child: Text(
                                                          'Good design sense',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      )
                                                    ]),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 70, 0),
                                                        child: Text(
                                                          'Game development experience a plus',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      )
                                                    ]),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 60, 0),
                                                        child: Text(
                                                          'Ability to deliver on a quality experience',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                    ]),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 50, 50, 0),
                                                        child: Container(
                                                            width: 300,
                                                            height: 40,
                                                            child: RaisedButton(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      92,
                                                                      154,
                                                                      255,
                                                                      1),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15.0),
                                                              ),
                                                              onPressed:
                                                                  () async {},
                                                              child: Text(
                                                                  "Apply now",
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        "Raleway",
                                                                    fontSize:
                                                                        20,
                                                                    color: Colors
                                                                        .white,
                                                                  )),
                                                            )))
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  150, 250, 10, 0),
                                              child: Container(
                                                  width: 500,
                                                  height: 600,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 5,
                                                        blurRadius: 7,
                                                        offset: Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 0, 10, 0),
                                                      child: Column(children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 30, 0, 0),
                                                          child: Text(
                                                            'ML engineer/ Data scientist',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 30),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 30, 10, 0),
                                                          child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 25,
                                                              width: 330,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(15),
                                                                        bottomLeft:
                                                                            Radius.circular(15),
                                                                        bottomRight:
                                                                            Radius.circular(15),
                                                                        topRight:
                                                                            Radius.circular(15),
                                                                      )),
                                                              child: Text(
                                                                'Able to think in context of information theory/Math',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 30, 10, 0),
                                                          child: Text(
                                                            'Qualifications',
                                                            style: TextStyle(
                                                                fontSize: 25),
                                                          ),
                                                        ),
                                                        Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(20,
                                                                    10, 10, 10),
                                                            width: 330,
                                                            child: Divider(
                                                              thickness: 4,
                                                              color:
                                                                  Colors.black,
                                                            )),
                                                        Row(children: [
                                                          Padding(
                                                              padding: const EdgeInsets
                                                                      .fromLTRB(
                                                                  50,
                                                                  30,
                                                                  10,
                                                                  0),
                                                              child: Container(
                                                                  height: 13,
                                                                  width: 13,
                                                                  decoration: BoxDecoration(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              118,
                                                                              255,
                                                                              0,
                                                                              1),
                                                                      shape: BoxShape
                                                                          .circle))),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    30,
                                                                    130,
                                                                    0),
                                                            child: Text(
                                                              'Fluent in Python/C/C++',
                                                              style: TextStyle(
                                                                  fontSize: 16),
                                                            ),
                                                          )
                                                        ]),
                                                        Row(children: [
                                                          Padding(
                                                              padding: const EdgeInsets
                                                                      .fromLTRB(
                                                                  50,
                                                                  30,
                                                                  10,
                                                                  0),
                                                              child: Container(
                                                                  height: 13,
                                                                  width: 13,
                                                                  decoration: BoxDecoration(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              118,
                                                                              255,
                                                                              0,
                                                                              1),
                                                                      shape: BoxShape
                                                                          .circle))),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    30,
                                                                    68,
                                                                    0),
                                                            child: Text(
                                                              'Experience with computer vision',
                                                              style: TextStyle(
                                                                  fontSize: 16),
                                                            ),
                                                          )
                                                        ]),
                                                        Row(children: [
                                                          Padding(
                                                              padding: const EdgeInsets
                                                                      .fromLTRB(
                                                                  50,
                                                                  30,
                                                                  10,
                                                                  0),
                                                              child: Container(
                                                                  height: 13,
                                                                  width: 13,
                                                                  decoration: BoxDecoration(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              118,
                                                                              255,
                                                                              0,
                                                                              1),
                                                                      shape: BoxShape
                                                                          .circle))),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    30,
                                                                    63,
                                                                    0),
                                                            child: Text(
                                                              'Experience with trainning models',
                                                              style: TextStyle(
                                                                  fontSize: 16),
                                                            ),
                                                          )
                                                        ]),
                                                        Row(children: [
                                                          Padding(
                                                              padding: const EdgeInsets
                                                                      .fromLTRB(
                                                                  50,
                                                                  30,
                                                                  10,
                                                                  0),
                                                              child: Container(
                                                                  height: 13,
                                                                  width: 13,
                                                                  decoration: BoxDecoration(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              118,
                                                                              255,
                                                                              0,
                                                                              1),
                                                                      shape: BoxShape
                                                                          .circle))),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    30,
                                                                    0,
                                                                    0),
                                                            child: Text(
                                                              'Knows things like SLAM, rotation matrices,\nPyTorch, softmax and ground truthing',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  height: 2),
                                                            ),
                                                          ),
                                                        ]),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(0, 50,
                                                                    50, 0),
                                                            child: Container(
                                                                width: 300,
                                                                height: 40,
                                                                child:
                                                                    RaisedButton(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          92,
                                                                          154,
                                                                          255,
                                                                          1),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15.0),
                                                                  ),
                                                                  onPressed:
                                                                      () async {},
                                                                  child: Text(
                                                                      "Apply now",
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            "Raleway",
                                                                        fontSize:
                                                                            20,
                                                                        color: Colors
                                                                            .white,
                                                                      )),
                                                                )))
                                                      ]))))
                                        ])),
                                    Container(
                                        padding:
                                            EdgeInsets.fromLTRB(150, 0, 100, 0),
                                        child: Row(children: [
                                          Container(
                                            width: 500,
                                            height: 700,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 10, 0),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 30, 0, 0),
                                                      child: Text(
                                                        'Electronic Engineer',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 30),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          20, 30, 0, 0),
                                                      child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 30,
                                                          width: 480,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .black,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            15),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                  )),
                                                          child: Text(
                                                            'Help us design and build an entirely new class of consumer electronics',
                                                            style: TextStyle(
                                                                height: 2,
                                                                color: Colors
                                                                    .white),
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 30, 10, 0),
                                                      child: Text(
                                                        'Qualifications',
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                    Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                20, 10, 10, 10),
                                                        width: 330,
                                                        child: Divider(
                                                          thickness: 4,
                                                          color: Colors.black,
                                                        )),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 120, 0),
                                                        child: Text(
                                                          'Fluent in Python, Linux, Git and \n     familiarity wuth C/C++',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              height: 2),
                                                        ),
                                                      )
                                                    ]),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 38, 0),
                                                        child: Text(
                                                          'Knows things about building hardware, RF, \n     and PCB design',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              height: 2),
                                                        ),
                                                      )
                                                    ]),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 210, 0),
                                                        child: Text(
                                                          'Good design sense',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      )
                                                    ]),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 80, 0),
                                                        child: Text(
                                                          'Game development experience a plus',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      )
                                                    ]),
                                                    Row(children: [
                                                      Padding(
                                                          padding: const EdgeInsets
                                                                  .fromLTRB(50,
                                                              30, 10, 0),
                                                          child: Container(
                                                              height: 13,
                                                              width: 13,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          255,
                                                                          0,
                                                                          1),
                                                                  shape: BoxShape
                                                                      .circle))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 30, 70, 0),
                                                        child: Text(
                                                          'Ability to deliver on a quality experience',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                    ]),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 50, 50, 0),
                                                        child: Container(
                                                            width: 300,
                                                            height: 40,
                                                            child: RaisedButton(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      92,
                                                                      154,
                                                                      255,
                                                                      1),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15.0),
                                                              ),
                                                              onPressed:
                                                                  () async {},
                                                              child: Text(
                                                                  "Apply now",
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        "Raleway",
                                                                    fontSize:
                                                                        20,
                                                                    color: Colors
                                                                        .white,
                                                                  )),
                                                            )))
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  150, 250, 10, 0),
                                              child: Container(
                                                  width: 500,
                                                  height: 500,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 5,
                                                        blurRadius: 7,
                                                        offset: Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 0, 10, 0),
                                                      child: Column(children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 30, 0, 0),
                                                          child: Text(
                                                            'IOS Developer',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 30),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 30, 10, 0),
                                                          child: Text(
                                                            'Qualifications',
                                                            style: TextStyle(
                                                                fontSize: 25),
                                                          ),
                                                        ),
                                                        Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(20,
                                                                    10, 10, 10),
                                                            width: 330,
                                                            child: Divider(
                                                              thickness: 4,
                                                              color:
                                                                  Colors.black,
                                                            )),
                                                        Row(children: [
                                                          Padding(
                                                              padding: const EdgeInsets
                                                                      .fromLTRB(
                                                                  50,
                                                                  30,
                                                                  10,
                                                                  0),
                                                              child: Container(
                                                                  height: 13,
                                                                  width: 13,
                                                                  decoration: BoxDecoration(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              118,
                                                                              255,
                                                                              0,
                                                                              1),
                                                                      shape: BoxShape
                                                                          .circle))),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    30,
                                                                    120,
                                                                    0),
                                                            child: Text(
                                                              'Fluent in git/Linux and Python',
                                                              style: TextStyle(
                                                                  fontSize: 16),
                                                            ),
                                                          )
                                                        ]),
                                                        Row(children: [
                                                          Padding(
                                                              padding: const EdgeInsets
                                                                      .fromLTRB(
                                                                  50,
                                                                  30,
                                                                  10,
                                                                  0),
                                                              child: Container(
                                                                  height: 13,
                                                                  width: 13,
                                                                  decoration: BoxDecoration(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              118,
                                                                              255,
                                                                              0,
                                                                              1),
                                                                      shape: BoxShape
                                                                          .circle))),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    30,
                                                                    150,
                                                                    0),
                                                            child: Text(
                                                              'Fluent in Swift and Xcode',
                                                              style: TextStyle(
                                                                  fontSize: 16),
                                                            ),
                                                          )
                                                        ]),
                                                        Row(children: [
                                                          Padding(
                                                              padding: const EdgeInsets
                                                                      .fromLTRB(
                                                                  50,
                                                                  30,
                                                                  10,
                                                                  0),
                                                              child: Container(
                                                                  height: 13,
                                                                  width: 13,
                                                                  decoration: BoxDecoration(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              118,
                                                                              255,
                                                                              0,
                                                                              1),
                                                                      shape: BoxShape
                                                                          .circle))),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    30,
                                                                    190,
                                                                    0),
                                                            child: Text(
                                                              'Good design sense',
                                                              style: TextStyle(
                                                                  fontSize: 16),
                                                            ),
                                                          )
                                                        ]),
                                                        Row(children: [
                                                          Padding(
                                                              padding: const EdgeInsets
                                                                      .fromLTRB(
                                                                  50,
                                                                  30,
                                                                  10,
                                                                  0),
                                                              child: Container(
                                                                  height: 13,
                                                                  width: 13,
                                                                  decoration: BoxDecoration(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              118,
                                                                              255,
                                                                              0,
                                                                              1),
                                                                      shape: BoxShape
                                                                          .circle))),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    30,
                                                                    50,
                                                                    0),
                                                            child: Text(
                                                              'Ability to deliver on a quality experience',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  height: 2),
                                                            ),
                                                          )
                                                        ]),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(0, 50,
                                                                    50, 0),
                                                            child: Container(
                                                                width: 300,
                                                                height: 40,
                                                                child:
                                                                    RaisedButton(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          92,
                                                                          154,
                                                                          255,
                                                                          1),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15.0),
                                                                  ),
                                                                  onPressed:
                                                                      () async {},
                                                                  child: Text(
                                                                      "Apply now",
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            "Raleway",
                                                                        fontSize:
                                                                            20,
                                                                        color: Colors
                                                                            .white,
                                                                      )),
                                                                )))
                                                      ]))))
                                        ])),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 50, 50, 50),
                                        child: Container(
                                            color: Colors.black,
                                            height: 2200,
                                            width: 2000,
                                            child: Column(children: [
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      40, 50, 50, 50),
                                                  child: new Text(
                                                    "Mind Behind the Scenes",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 80,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            "SanFrancisco"),
                                                  )),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Row(children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            240, 50, 50, 50),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/bibek.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(346 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            40, 50, 50, 50),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/bhawana.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(15 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            40, 50, 50, 50),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/eva.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(330 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                              ]),
                                              Row(children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            240, 0, 50, 50),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/sajina.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(346 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 50, 0),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/saurav.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(15 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            20, 0, 0, 50),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/martina.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(330 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                              ]),
                                              Row(children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            240, 0, 50, 50),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/rajan.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(346 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            40, 0, 50, 0),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/karuna.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(15 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            40, 0, 50, 50),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/nischal.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(330 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                              ]),
                                              Row(children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            740, 0, 50, 50),
                                                    child: new Transform(
                                                      child: Image.asset(
                                                          'instax/utkarsh.png'),
                                                      alignment:
                                                          FractionalOffset
                                                              .center,
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..rotateZ(346 *
                                                                3.1415927 /
                                                                180),
                                                    )),
                                              ])
                                            ]))),
                                    FooterPanel()
                                  ]))
                        ])))));
  }
}
