import 'package:explore/Pages/Desktop/DesktopFeatures.dart';
import 'package:explore/Pages/Desktop/DesktopHome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
//  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Paradox',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DesktopFeatures());
  }
}
