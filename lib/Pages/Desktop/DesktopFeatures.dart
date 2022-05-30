import 'dart:math';

import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:flutter/material.dart';

import 'package:getwidget/components/button/gf_button.dart';
import 'package:glassmorphism/glassmorphism.dart';

class DesktopFeatures extends StatefulWidget {
  @override
  _DesktopFeaturesState createState() => _DesktopFeaturesState();
}

class _DesktopFeaturesState extends State<DesktopFeatures> {
  String imagePath1 = "assets/blender.png";
// Different types of theme
  Image1() {
    setState(() {
      imagePath1 = "assets/colorful_dark.png";
    });
  }

  Image2() {
    setState(() {
      imagePath1 = "assets/colorful_light.png";
    });
  }

  Image3() {
    setState(() {
      imagePath1 = "assets/ghost.png";
    });
  }

  Image4() {
    setState(() {
      imagePath1 = "assets/industrial.png";
    });
  }

  Image5() {
    setState(() {
      imagePath1 = "assets/pure_dark.png";
    });
  }

  Image6() {
    setState(() {
      imagePath1 = "assets/simple.png";
    });
  }

  Image7() {
    setState(() {
      imagePath1 = "assets/toy.png";
    });
  }

  Image9() {
    setState(() {
      imagePath1 = "assets/tron.png";
    });
  }

  Image10() {
    setState(() {
      imagePath1 = "assets/uei.png";
    });
  }

  bool isBack = true;
  double angle = 0;
// Rotation of container
  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  bool pressed;
  bool pressed1;
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
                      padding: const EdgeInsets.fromLTRB(0, 13, 100, 0),
                      child: FlatButton(
                        height: 100,
                        minWidth: 150,
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
            body: SingleChildScrollView(
                child: Container(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(children: [
                            SizedBox(
                              width: 150,
                            ),
                            Container(
                                width: 350,
                                height: 300,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'dot.png',
                                        ),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        170, 100, 0, 10),
                                    child: Text(
                                      'FEA',
                                      style: TextStyle(
                                          fontSize: 100, fontFamily: 'SanFran'),
                                    ))),
                            Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 19, 0, 10),
                                child: Text(
                                  'TURES',
                                  style: TextStyle(
                                      fontSize: 100,
                                      wordSpacing: 20,
                                      fontFamily: 'SanFran'),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 50, 0, 10),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image(
                                        image: AssetImage(
                                      "circle.png",
                                    ))))
                          ]),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 90, 10),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 10, 20),
                                        child: Column(children: [
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      50, 0, 10, 20),
                                              child: new Image.asset(
                                                'lines.png',
                                                height: 600,
                                                width: 300,
                                              )),
                                        ])),
                                    new Expanded(
                                        child: Center(
                                            child: new Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                          Container(
                                            width: 800,
                                            height: 420,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'back1.png',
                                                  ),
                                                  fit: BoxFit.fill),
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
                                              child: Column(children: [
                                                Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 30, 10, 0),
                                                    child: new Text(
                                                      "Stylus Support",
                                                      style: TextStyle(
                                                          fontSize: 50,
                                                          fontFamily:
                                                              'SanFrancisco',
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                                Row(children: [
                                                  Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          90, 0, 0, 0),
                                                      child: Image.asset(
                                                        'pencil.png',
                                                        height: 330,
                                                      )),
                                                  Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          30, 0, 0, 10),
                                                      child:
                                                          GlassmorphicContainer(
                                                        width: 500,
                                                        height: 250,
                                                        borderRadius: 20,
                                                        blur: 20,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        border: 2,
                                                        linearGradient:
                                                            LinearGradient(
                                                                begin: Alignment
                                                                    .topLeft,
                                                                end: Alignment
                                                                    .bottomRight,
                                                                colors: [
                                                              Color(0xFFffffff)
                                                                  .withOpacity(
                                                                      0.1),
                                                              Color(0xFFFFFFFF)
                                                                  .withOpacity(
                                                                      0.05),
                                                            ],
                                                                stops: [
                                                              0.1,
                                                              1,
                                                            ]),
                                                        borderGradient:
                                                            LinearGradient(
                                                          begin:
                                                              Alignment.topLeft,
                                                          end: Alignment
                                                              .bottomRight,
                                                          colors: [
                                                            Color(0xFFffffff)
                                                                .withOpacity(
                                                                    0.5),
                                                            Color((0xFFFFFFFF))
                                                                .withOpacity(
                                                                    0.5),
                                                          ],
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(40, 20,
                                                                  40, 20),
                                                          child: new Text(
                                                              "Write notes into your flows by hand using \na stylus pen. Effective use of this feature \nsigniicantly support clarity an adds a \nwhole new dimension to your visual",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'SanFran',
                                                                height: 2,
                                                                fontSize: 23,
                                                              )),
                                                        ),
                                                      ))
                                                ])
                                              ]),
                                            ),
                                          )
                                        ]))),
                                  ])),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(50, 0, 100, 0),
                              child: Container(
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                    new Text(
                                      "Work Fast With Parallel \nComputing",
                                      style: TextStyle(
                                          fontSize: 55,
                                          height: 1.5,
                                          fontFamily: 'SanFrancisco',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]))),
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 10, 10),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Expanded(
                                        child: Center(
                                            child: new Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                          Container(
                                            height: 350,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'line.png',
                                                  ),
                                                  fit: BoxFit.fill),
                                              color: Colors.white,
                                            ),
                                            child: Column(children: [
                                              Row(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          30, 50, 0, 10),
                                                  child: Container(
                                                    width: 580,
                                                    height: 240,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              topRight: Radius
                                                                  .circular(10),
                                                              bottomLeft: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10)),
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
                                                          30, 30, 10, 0),
                                                      child: new Text(
                                                        "Your Work feels satisfying when your work get seemless \nand fast. Through simple GUI snd tools to work with for \ndeveloper. Programming would be more easier, simpler \nto code, understand and build an increadible product ",
                                                        style: TextStyle(
                                                            height: 2.2,
                                                            fontFamily:
                                                                'SanFran',
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ])
                                            ]),
                                          ),
                                        ]))),
                                    new Expanded(
                                        child: Center(
                                            child: new Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                          Container(
                                            width: 650,
                                            height: 400,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage("home.jpg"),
                                                  fit: BoxFit.fill),
                                              color: Colors.white,
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
                                          )
                                        ]))),
                                  ])),
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 150, 20, 30),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Expanded(
                                      child: Center(
                                          child: new Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 50, 0, 30),
                                              child: GestureDetector(
                                                onTap: _flip,
                                                child: TweenAnimationBuilder(
                                                    tween: Tween<double>(
                                                        begin: 0, end: angle),
                                                    duration:
                                                        Duration(seconds: 1),
                                                    builder:
                                                        (BuildContext context,
                                                            double val, __) {
                                                      //here we will change the isBack val so we can change the content of the card
                                                      if (val >= (pi / 2)) {
                                                        isBack = false;
                                                      } else {
                                                        isBack = true;
                                                      }
                                                      return (Transform(
                                                          //let's make the card flip by it's center
                                                          alignment:
                                                              Alignment.center,
                                                          transform:
                                                              Matrix4.identity()
                                                                ..setEntry(
                                                                    3, 2, 0.001)
                                                                ..rotateY(val),
                                                          child: Container(
                                                            width: 700,
                                                            height: 350,
                                                            child: isBack
                                                                ? GlassmorphicContainer(
                                                                    width: 700,
                                                                    height: 350,
                                                                    borderRadius:
                                                                        10,
                                                                    linearGradient: LinearGradient(
                                                                        colors: [
                                                                          Colors
                                                                              .black87,
                                                                          Colors
                                                                              .black
                                                                        ],
                                                                        begin: Alignment
                                                                            .topLeft,
                                                                        end: Alignment
                                                                            .bottomRight),
                                                                    borderGradient:
                                                                        LinearGradient(
                                                                            colors: [
                                                                          Colors
                                                                              .deepPurpleAccent,
                                                                          Colors
                                                                              .purple
                                                                        ]),
                                                                    border: 2,
                                                                    blur: 2,
                                                                    child: Padding(
                                                                        padding: const EdgeInsets.fromLTRB(30, 30, 20, 0),
                                                                        child: Column(
                                                                          children: [
                                                                            Padding(
                                                                                padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                                                                                child: Text(
                                                                                  "Try some themes",
                                                                                  style: TextStyle(color: Colors.white, fontSize: 25),
                                                                                )),
                                                                            Row(children: [
                                                                              Padding(
                                                                                  padding: const EdgeInsets.fromLTRB(30, 30, 10, 0),
                                                                                  child: Container(
                                                                                    height: 50,
                                                                                    width: 120,
                                                                                    child: GFButton(
                                                                                      color: Colors.grey.shade800,
                                                                                      onPressed: () {
                                                                                        Image1();
                                                                                      },
                                                                                      child: Text(
                                                                                        'Dark',
                                                                                        style: TextStyle(
                                                                                          fontSize: 18,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  )),
                                                                              Padding(
                                                                                padding: const EdgeInsets.fromLTRB(50, 30, 10, 0),
                                                                                child: Container(
                                                                                  height: 50,
                                                                                  width: 120,
                                                                                  child: GFButton(
                                                                                    color: Colors.grey.shade800,
                                                                                    onPressed: () {
                                                                                      Image2();
                                                                                    },
                                                                                    child: Text('Light', style: TextStyle(fontSize: 18)),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                  padding: const EdgeInsets.fromLTRB(50, 30, 10, 0),
                                                                                  child: Container(
                                                                                    height: 50,
                                                                                    width: 120,
                                                                                    child: GFButton(
                                                                                      color: Colors.grey.shade800,
                                                                                      onPressed: () {
                                                                                        Image3();
                                                                                      },
                                                                                      child: Text('Ghost', style: TextStyle(fontSize: 18)),
                                                                                    ),
                                                                                  )),
                                                                            ]),
                                                                            Row(children: [
                                                                              Padding(
                                                                                  padding: const EdgeInsets.fromLTRB(30, 40, 10, 0),
                                                                                  child: Container(
                                                                                      height: 50,
                                                                                      width: 120,
                                                                                      child: GFButton(
                                                                                        color: Colors.grey.shade800,
                                                                                        onPressed: () {
                                                                                          Image4();
                                                                                        },
                                                                                        child: Text('Industrial', style: TextStyle(fontSize: 18)),
                                                                                      ))),
                                                                              Padding(
                                                                                  padding: const EdgeInsets.fromLTRB(50, 40, 10, 0),
                                                                                  child: Container(
                                                                                    height: 50,
                                                                                    width: 120,
                                                                                    child: GFButton(
                                                                                      color: Colors.grey.shade800,
                                                                                      onPressed: () {
                                                                                        Image5();
                                                                                      },
                                                                                      child: Text('Pure Dark', style: TextStyle(fontSize: 18)),
                                                                                    ),
                                                                                  )),
                                                                              Padding(
                                                                                  padding: const EdgeInsets.fromLTRB(50, 40, 10, 0),
                                                                                  child: Container(
                                                                                      height: 50,
                                                                                      width: 120,
                                                                                      child: GFButton(
                                                                                        color: Colors.grey.shade800,
                                                                                        onPressed: () {
                                                                                          Image6();
                                                                                        },
                                                                                        child: Text('Simple', style: TextStyle(fontSize: 18)),
                                                                                      ))),
                                                                            ]),
                                                                            Row(children: [
                                                                              Padding(
                                                                                  padding: const EdgeInsets.fromLTRB(30, 30, 10, 0),
                                                                                  child: Container(
                                                                                      height: 45,
                                                                                      width: 120,
                                                                                      child: GFButton(
                                                                                        color: Colors.grey.shade800,
                                                                                        onPressed: () {
                                                                                          Image7();
                                                                                        },
                                                                                        child: Text('Toy', style: TextStyle(fontSize: 18)),
                                                                                      ))),
                                                                              Padding(
                                                                                padding: const EdgeInsets.fromLTRB(50, 30, 10, 0),
                                                                                child: Container(
                                                                                    height: 45,
                                                                                    width: 120,
                                                                                    child: GFButton(
                                                                                      color: Colors.grey.shade800,
                                                                                      onPressed: () {
                                                                                        Image10();
                                                                                      },
                                                                                      child: Text('UEI', style: TextStyle(fontSize: 18)),
                                                                                    )),
                                                                              ),
                                                                              Padding(
                                                                                  padding: const EdgeInsets.fromLTRB(50, 40, 10, 0),
                                                                                  child: Container(
                                                                                      height: 50,
                                                                                      width: 120,
                                                                                      child: GFButton(
                                                                                        color: Colors.grey.shade800,
                                                                                        onPressed: () {
                                                                                          Image9();
                                                                                        },
                                                                                        child: Text('Trun', style: TextStyle(fontSize: 18)),
                                                                                      ))),
                                                                            ])
                                                                          ],
                                                                        )),
                                                                  )
                                                                : Transform(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    transform: Matrix4
                                                                        .identity()
                                                                      ..rotateY(
                                                                          pi), // it will flip horizontally the container
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          580,
                                                                      height:
                                                                          240,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: AssetImage(
                                                                              'back.png',
                                                                            ),
                                                                            fit: BoxFit.fill),
                                                                        borderRadius: BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(10),
                                                                            topRight: Radius.circular(10),
                                                                            bottomLeft: Radius.circular(10),
                                                                            bottomRight: Radius.circular(10)),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                Colors.grey.withOpacity(0.5),
                                                                            spreadRadius:
                                                                                5,
                                                                            blurRadius:
                                                                                7,
                                                                            offset:
                                                                                Offset(0, 3), // changes position of shadow
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child: Padding(
                                                                          padding: const EdgeInsets.fromLTRB(30, 30, 10, 0),
                                                                          child: Column(children: [
                                                                            Padding(
                                                                                padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                                                                                child: Text(
                                                                                  "Create Clear and pretty flow",
                                                                                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 25),
                                                                                )),
                                                                            Padding(
                                                                                padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
                                                                                child: new Text(
                                                                                  "Design plays a huge role while talking about visual scripting. Therefore paradox offer a variety of different flow design.",
                                                                                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20, fontFamily: 'SanFran', height: 2, fontStyle: FontStyle.italic),
                                                                                ))
                                                                          ])),
                                                                    ), //else we will display it here,
                                                                  ),
                                                          )));
                                                    }),
                                              ),
                                            ),
                                          ])),
                                    ),
                                    new Expanded(
                                      child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 10, 40, 0),
                                          child: Center(
                                              child: new Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                Container(
                                                  width: 600,
                                                  height: 430,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                          imagePath1,
                                                        ),
                                                        fit: BoxFit.fill),
                                                    color: Colors.white,
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
                                                ),
                                              ]))),
                                    )
                                  ])),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 80, 0, 10),
                              child: Container(
                                  width: 1500,
                                  height: 600,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(33, 33, 33, 1),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  child: new Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              40, 30, 10, 0),
                                          child: Container(
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 50, 10, 20),
                                                child: Image.asset(
                                                    'scriptcode.png',
                                                    width: 750,
                                                    height: 700)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 120,
                                        ),
                                        Column(children: [
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 30, 50, 0),
                                              child: Row(children: [
                                                new Text(
                                                  "Source",
                                                  style: TextStyle(
                                                      color: Colors.pink,
                                                      fontSize: 40,
                                                      fontFamily: "NotoSans"),
                                                ),
                                                new Text(
                                                  " Code",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 40,
                                                      fontFamily: "NotoSans"),
                                                ),
                                                new Text(
                                                  " Access",
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 40,
                                                      fontFamily: "NotoSans"),
                                                ),
                                              ])),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 30, 50, 50),
                                              child: Column(children: [
                                                Container(
                                                    width: 500,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromRGBO(
                                                          59, 59, 59, 1),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              topRight: Radius
                                                                  .circular(10),
                                                              bottomLeft: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10)),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          10, 05, 0, 05),
                                                      child: Column(children: [
                                                        Row(children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    10,
                                                                    05,
                                                                    0,
                                                                    0),
                                                            child: new Text(
                                                              "{",
                                                              style: TextStyle(
                                                                  fontSize: 50,
                                                                  color: Colors
                                                                      .red),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    20,
                                                                    05,
                                                                    0,
                                                                    0),
                                                            child: new Text(
                                                              "Paradox tries to enhance the textual  ",
                                                              style: TextStyle(
                                                                  height: 2,
                                                                  fontSize: 23,
                                                                  fontFamily:
                                                                      'SanFran',
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                        ]),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 0, 0, 0),
                                                          child: new Text(
                                                            "representation, you always have \naccess to Source code implementation \nof the nodes you use inside the editor.\n\n Furthermore, in some cases you can \n temporarily change method ",
                                                            style: TextStyle(
                                                                height: 2,
                                                                fontFamily:
                                                                    'SanFran',
                                                                fontSize: 23,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                        Row(children: [
                                                          Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      50,
                                                                      0,
                                                                      0,
                                                                      05),
                                                              child: new Text(
                                                                "implementation",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        23,
                                                                    fontFamily:
                                                                        'SanFran',
                                                                    color: Colors
                                                                        .white),
                                                              )),
                                                          Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      20,
                                                                      0,
                                                                      0,
                                                                      05),
                                                              child: new Text(
                                                                "}",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        50,
                                                                    color: Colors
                                                                        .yellow),
                                                              ))
                                                        ])
                                                      ]),
                                                    ))
                                              ]))
                                        ]),
                                      ]))),
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 50, 100, 0),
                              child: Container(
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                    new Text(
                                      "Built-in Interpreter",
                                      style:
                                          TextStyle(fontSize: 40, height: 1.5),
                                    ),
                                  ]))),
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 10, 10),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Expanded(
                                        child: Center(
                                            child: new Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                          Container(
                                            height: 400,
                                            width: 900,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'dots.png',
                                                  ),
                                                  fit: BoxFit.fill),
                                              color: Colors.white,
                                            ),
                                            child: Column(children: [
                                              Row(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          30, 50, 0, 10),
                                                  child: Container(
                                                    width: 580,
                                                    height: 300,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              topRight: Radius
                                                                  .circular(10),
                                                              bottomLeft: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10)),
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
                                                          30, 30, 10, 0),
                                                      child: new Text(
                                                        "Using the built-in REPL you also have access to the backend session and you can use its whole API as well as access your nodes. Any modifications- like creating/renaming/deleting new scripts -will reactively be processed by the frontend automatically, so you can really do everything from the console. ",
                                                        style: TextStyle(
                                                            height: 2.2,
                                                            fontFamily:
                                                                'SanFran',
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ])
                                            ]),
                                          ),
                                        ]))),
                                    SizedBox(width: 70),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          30, 50, 50, 0),
                                      child: new Expanded(
                                          child: Center(
                                              child: new Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                            Container(
                                              width: 700,
                                              height: 500,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      'home.png',
                                                    ),
                                                    fit: BoxFit.fill),
                                                color: Colors.white,
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
                                            )
                                          ]))),
                                    )
                                  ])),
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(70, 100, 100, 10),
                              child: Container(
                                width: 1200,
                                height: 400,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      end: const Alignment(0.0, -1),
                                      begin: const Alignment(0.0, 0.6),
                                      colors: [
                                        Color.fromRGBO(162, 83, 237, 1),
                                        Color.fromRGBO(255, 127, 0, 1),
                                      ]),
                                  color: Color.fromRGBO(255, 171, 75, 2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: new Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            420, 30, 100, 0),
                                        child: new Text(
                                          "Python3 By Default",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 50,
                                              fontFamily: 'SanFrancisco',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            370, 20, 50, 0),
                                        child: new Text(
                                          "Almost every inbuilt function are intergrated in our editor",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontFamily: 'SanFran',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            390, 15, 50, 0),
                                        child: new Text(
                                          "You can acces instantly with right click on your mouse",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontFamily: 'SanFran',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            540, 20, 100, 0),
                                        child: new Image.asset("python.png",
                                            width: size.width / 12,
                                            height: size.height / 4),
                                      )
                                    ]),
                              )),
                          FooterPanel()
                        ])))));
  }
}
