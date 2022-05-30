import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFeatures.dart';
import 'package:explore/Pages/Desktop/DesktopHome.dart';
import 'package:explore/Pages/Desktop/DesktopPrivacy.dart';
import 'package:explore/Pages/Desktop/DesktopTerms.dart';
import 'package:explore/Pages/Desktop/DesktopTutorial.dart';
import 'package:explore/Pages/Desktop/MindBehindDevelopment.dart';
import 'package:explore/Pages/Desktop/desktopabout.dart';
import 'package:explore/Pages/Desktop/desktopcarrer.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Container(
                color: Colors.grey.shade800,
                width: 10000,
                child: new Column(children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(children: <Widget>[
                        new Container(
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(130, 120, 0, 0),
                                  child: new Text(
                                    "Services",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        fontFamily: 'SanFran',
                                        color: Colors.white),
                                  )),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(130, 40, 0, 0),
                                  child: new InkWell(
                                      child: Text(
                                        "Paradox",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'SanFran',
                                            color: Colors.white),
                                      ),
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DesktopHome()));
                                      })),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(130, 20, 0, 0),
                                  child: new InkWell(
                                      child: new Text(
                                        "DesktopDownloads",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'SanFran',
                                            color: Colors.white),
                                      ),
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DesktopDownloads()));
                                      })),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(130, 20, 0, 50),
                                  child: new InkWell(
                                      child: new Text(
                                    "Pricing",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'SanFran',
                                        color: Colors.white),
                                  ))),
                            ])),
                        Container(
                            child: Column(children: <Widget>[
                          Padding(
                              padding: EdgeInsets.fromLTRB(200, 150, 0, 0),
                              child: new InkWell(
                                  child: new Text("Information",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        fontFamily: 'SanFran',
                                        color: Colors.white,
                                      )),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DesktopAbout()));
                                  })),
                          Padding(
                              padding: EdgeInsets.fromLTRB(200, 40, 0, 0),
                              child: new InkWell(
                                  child: new Text("Setup Guide",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'SanFran',
                                          color: Colors.white)))),
                          Padding(
                              padding: EdgeInsets.fromLTRB(175, 20, 0, 0),
                              child: new InkWell(
                                  child: new Text("Features",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'SanFran',
                                          color: Colors.white)),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DesktopFeatures()));
                                  })),
                          Padding(
                              padding: EdgeInsets.fromLTRB(165, 20, 0, 0),
                              child: new InkWell(
                                  child: new Text("Tutorial",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'SanFran',
                                          color: Colors.white)),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DesktopTutorial()));
                                  })),
                          Padding(
                              padding: EdgeInsets.fromLTRB(313, 20, 0, 50),
                              child: new InkWell(
                                child: new Text("Mind Blowing Development",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'SanFran',
                                        color: Colors.white)),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          DesktopMindBehindUsers()));
                                },
                              )),
                        ])),
                        new Container(
                            child: new Column(children: <Widget>[
                          Padding(
                              padding: EdgeInsets.fromLTRB(200, 50, 0, 0),
                              child: InkWell(
                                  child: Text(
                                    " Terms",
                                    style: TextStyle(
                                        fontFamily: 'SanFran',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DesktopTerms()));
                                  })),
                          Padding(
                              padding: EdgeInsets.fromLTRB(150, 40, 0, 0),
                              child: InkWell(
                                  child: Text(
                                    " Career",
                                    style: TextStyle(
                                        fontFamily: 'SanFran',
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DesktopCareer()));
                                  })),
                          Padding(
                              padding: EdgeInsets.fromLTRB(165, 20, 0, 0),
                              child: InkWell(
                                  child: Text(
                                    " About us",
                                    style: TextStyle(
                                        fontFamily: 'SanFran',
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DesktopAbout()));
                                  })),
                          Padding(
                              padding: EdgeInsets.fromLTRB(210, 20, 0, 0),
                              child: InkWell(
                                  child: Text(
                                    "Privacy policy",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DesktopPrivacy()));
                                  })),
                        ])),
                        new Container(
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(200, 0, 0, 0),
                                  child: InkWell(
                                    child: Text(
                                      " Follow us",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'SanFran',
                                          fontSize: 24,
                                          color: Colors.white),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(200, 40, 10, 10),
                                  child: Row(children: [
                                    InkWell(
                                        child: Image.asset(
                                          "instagram.png",
                                          height: 25,
                                        ),
                                        onTap: () {
                                          _launchURL() async {
                                            const url =
                                                'https://www.instagram.com/_princelab_/';
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          }
                                        }),
                                    SizedBox(width: 30),
                                    InkWell(
                                        child: Image.asset(
                                          "linkedin.png",
                                          height: 25,
                                        ),
                                        onTap: () {
                                          _launchURL() async {
                                            const url =
                                                'https://www.instagram.com/_princelab_/';
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          }
                                        }),
                                    SizedBox(width: 30),
                                    InkWell(
                                        child: Image.asset(
                                          "twitter.png",
                                          height: 25,
                                        ),
                                        onTap: () {
                                          _launchURL() async {
                                            const url =
                                                'https://www.instagram.com/_princelab_/';
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          }
                                        }),
                                    SizedBox(width: 30),
                                    InkWell(
                                        child: Image.asset(
                                          "facebook.png",
                                          height: 25,
                                        ),
                                        onTap: () {
                                          _launchURL() async {
                                            const url =
                                                'https://www.instagram.com/_princelab_/';
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          }
                                        }),
                                  ])),
                            ])),
                      ]))
                ]))));
  }
}
