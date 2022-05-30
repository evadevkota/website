import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/DesktopHome.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Desktopdrawer.dart';

class ProfileScreen extends StatefulWidget {
  _ProfileScreenState createState() => _ProfileScreenState();
}

//String value;
// ProfileScreen({this.value});
@override
// _ProfileScreenState createState() => _ProfileScreenState();
//value);
//}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = true;
  String data =
      'I cannot have pleasure while another grieves and I have power to help him';
  String value;
//  _ProfileScreenState(this.value);
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
                // leading: IconButton(
                //   padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                // icon: Image.asset('icons/drawer.png'),
                //onPressed: () {
                //scaffoldKey.currentState.openDrawer();
                //}),
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
            //  drawer: MainDrawer(),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SafeArea(
                    child: Column(children: [
                  Stack(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 150, 10, 0),
                                      child: Stack(children: [
                                        Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 50, 10, 0),
                                            width: 1000,
                                            margin: EdgeInsets.fromLTRB(
                                                250, 50, 100, 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(.1),
                                                      blurRadius: 5,
                                                      spreadRadius: 2)
                                                ]),
                                            child: Container(
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    /// card header
                                                    Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 50, 10, 0),
                                                        width: 50,
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Spacer(flex: 10),
                                                              Spacer(flex: 1)
                                                            ])),
                                                    SizedBox(height: 50),
                                                    Text(
                                                      "eva",
                                                      style: TextStyle(
                                                          fontSize: 35,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 30),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons.location_pin,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 30),
                                                          Text(
                                                              'Kathmandu, Nepal',
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                              ))
                                                        ]),
                                                    SizedBox(height: 30),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons.work,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 30),
                                                          Text(
                                                              'Currently working on solutiontube as a UI/UX designer.',
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                              ))
                                                        ]),
                                                    SizedBox(height: 30),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons.school,
                                                            size: 20,
                                                          ),
                                                          SizedBox(width: 30),
                                                          Text(
                                                              'Islington College\n',
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                              ))
                                                        ]),

                                                    /// description
                                                  ]),
                                            )),
                                        Expanded(
                                            child: Container(
                                                alignment: Alignment.center,
                                                child: CircleAvatar(
                                                    radius: 100,
                                                    backgroundImage: AssetImage(
                                                        'male_avatar.png'))))
                                      ]))
                                ]),
                          )),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 50, 5),
                              child: FlatButton(
                                minWidth: 150,
                                height: 50,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(70)),
                                color: Colors.black,
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                                child: Text("LogOut",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              )),
                          FooterPanel()
                        ]),
                  ])
                ])))));
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton = FlatButton(
        child: Text("Continue"),
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => DesktopHome()),
              (Route<dynamic> route) => false);
        });

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Are you sure you want to logout "),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
