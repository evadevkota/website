import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:flutter/material.dart';

class DesktopMindBehindUsers extends StatelessWidget {
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
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 50, 50, 50),
                  child: Container(
                      color: Colors.black,
                      height: 2200,
                      width: 2000,
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(40, 50, 50, 50),
                            child: new Text(
                              "Mind Behind the Scenes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "SanFrancisco"),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(240, 50, 50, 50),
                              child: new Transform(
                                child: Image.asset('instax/bibek.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(346 * 3.1415927 / 180),
                              )),
                          Padding(
                              padding: EdgeInsets.fromLTRB(40, 50, 50, 50),
                              child: new Transform(
                                child: Image.asset('instax/bhawana.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(15 * 3.1415927 / 180),
                              )),
                          Padding(
                              padding: EdgeInsets.fromLTRB(40, 50, 50, 50),
                              child: new Transform(
                                child: Image.asset('instax/eva.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(330 * 3.1415927 / 180),
                              )),
                        ]),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(240, 0, 50, 50),
                              child: new Transform(
                                child: Image.asset('instax/sajina.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(346 * 3.1415927 / 180),
                              )),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                              child: new Transform(
                                child: Image.asset('instax/saurav.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(15 * 3.1415927 / 180),
                              )),
                          Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                              child: new Transform(
                                child: Image.asset('instax/martina.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(330 * 3.1415927 / 180),
                              )),
                        ]),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(240, 0, 50, 50),
                              child: new Transform(
                                child: Image.asset('instax/rajan.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(346 * 3.1415927 / 180),
                              )),
                          Padding(
                              padding: EdgeInsets.fromLTRB(40, 0, 50, 0),
                              child: new Transform(
                                child: Image.asset('instax/karuna.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(15 * 3.1415927 / 180),
                              )),
                          Padding(
                              padding: EdgeInsets.fromLTRB(40, 0, 50, 50),
                              child: new Transform(
                                child: Image.asset('instax/nischal.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(330 * 3.1415927 / 180),
                              )),
                        ]),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(740, 0, 50, 50),
                              child: new Transform(
                                child: Image.asset('instax/utkarsh.png'),
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..rotateZ(346 * 3.1415927 / 180),
                              )),
                        ])
                      ])),
                ),
              ]),
            )));
  }
}
