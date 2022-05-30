import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopProfile.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:explore/utils/authentication.dart';
import 'package:explore/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';

class DesktopSignIn extends StatefulWidget {
  @override
  _DesktopSignInState createState() => _DesktopSignInState();
}

class _DesktopSignInState extends State<DesktopSignIn> {
  TextEditingController textControllerEmail;
  FocusNode textFocusNodeEmail;
  bool _isEditingEmail = false;

  TextEditingController textControllerPassword;
  FocusNode textFocusNodePassword;
  bool _isEditingPassword = false;

  bool _isRegistering = false;
  bool _isLoggingIn = false;

  String loginStatus;
  Color loginStringColor = Colors.green;

  String _validateEmail(String value) {
    value = value.trim();

    if (textControllerEmail.text.isNotEmpty) {
      if (value.isEmpty) {
        return 'Email can\'t be empty';
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
        return 'Enter a correct email address';
      }
    }

    return null;
  }

  String _validatePassword(String value) {
    value = value.trim();

    if (textControllerEmail.text.isNotEmpty) {
      if (value.isEmpty) {
        return 'Password can\'t be empty';
      } else if (value.length < 6) {
        return 'Length of password should be greater than 6';
      }
    }

    return null;
  }

  @override
  void initState() {
    textControllerEmail = TextEditingController();
    textControllerPassword = TextEditingController();
    textControllerEmail.text = '';
    textControllerPassword.text = '';
    textFocusNodeEmail = FocusNode();
    textFocusNodePassword = FocusNode();
    super.initState();
  }

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
            body: ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 8),
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sign In to \nMy Application',
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height / 6),
                            child: Dialog(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 500,
                                    height: 500,
                                    //  color: Theme.of(context).backgroundColor,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20.0,
                                            bottom: 8,
                                          ),
                                          child: Text(
                                            'Email address',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  .color,
                                              fontSize: 18,
                                              // fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              // letterSpacing: 3,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20.0,
                                            right: 20,
                                          ),
                                          child: TextField(
                                            focusNode: textFocusNodeEmail,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            textInputAction:
                                                TextInputAction.next,
                                            controller: textControllerEmail,
                                            autofocus: false,
                                            onChanged: (value) {
                                              setState(() {
                                                _isEditingEmail = true;
                                              });
                                            },
                                            onSubmitted: (value) {
                                              textFocusNodeEmail.unfocus();
                                              FocusScope.of(context)
                                                  .requestFocus(
                                                      textFocusNodePassword);
                                            },
                                            style:
                                                TextStyle(color: Colors.black),
                                            decoration: InputDecoration(
                                              border: new OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.blueGrey[800],
                                                  width: 3,
                                                ),
                                              ),
                                              filled: true,
                                              hintStyle: new TextStyle(
                                                color: Colors.blueGrey[300],
                                              ),
                                              hintText: "Email",
                                              fillColor: Colors.white,
                                              errorText: _isEditingEmail
                                                  ? _validateEmail(
                                                      textControllerEmail.text)
                                                  : null,
                                              errorStyle: TextStyle(
                                                fontSize: 12,
                                                color: Colors.redAccent,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20.0,
                                            bottom: 8,
                                          ),
                                          child: Text(
                                            'Password',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  .color,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              // letterSpacing: 3,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20.0,
                                            right: 20,
                                          ),
                                          child: TextField(
                                            focusNode: textFocusNodePassword,
                                            keyboardType: TextInputType.text,
                                            textInputAction:
                                                TextInputAction.done,
                                            controller: textControllerPassword,
                                            obscureText: true,
                                            autofocus: false,
                                            onChanged: (value) {
                                              setState(() {
                                                _isEditingPassword = true;
                                              });
                                            },
                                            onSubmitted: (value) {
                                              textFocusNodePassword.unfocus();
                                              FocusScope.of(context)
                                                  .requestFocus(
                                                      textFocusNodePassword);
                                            },
                                            style:
                                                TextStyle(color: Colors.black),
                                            decoration: InputDecoration(
                                              border: new OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.blueGrey[800],
                                                  width: 3,
                                                ),
                                              ),
                                              filled: true,
                                              hintStyle: new TextStyle(
                                                color: Colors.blueGrey[300],
                                              ),
                                              hintText: "Password",
                                              fillColor: Colors.white,
                                              errorText: _isEditingPassword
                                                  ? _validatePassword(
                                                      textControllerPassword
                                                          .text)
                                                  : null,
                                              errorStyle: TextStyle(
                                                fontSize: 12,
                                                color: Colors.redAccent,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Flexible(
                                                flex: 1,
                                                child: Container(
                                                  width: double.maxFinite,
                                                  child: TextButton(
                                                    style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.deepPurple,
                                                      primary:
                                                          Colors.deepPurple,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                    ),
                                                    onPressed: () async {
                                                      setState(() {
                                                        _isLoggingIn = true;
                                                        textFocusNodeEmail
                                                            .unfocus();
                                                        textFocusNodePassword
                                                            .unfocus();
                                                      });
                                                      if (_validateEmail(
                                                                  textControllerEmail
                                                                      .text) ==
                                                              null &&
                                                          _validatePassword(
                                                                  textControllerPassword
                                                                      .text) ==
                                                              null) {
                                                        await signInWithEmailPassword(
                                                                textControllerEmail
                                                                    .text,
                                                                textControllerPassword
                                                                    .text)
                                                            .then((result) {
                                                          if (result != null) {
                                                            print(result);
                                                            setState(() {
                                                              loginStatus =
                                                                  'You have successfully logged in';
                                                              loginStringColor =
                                                                  Colors.green;
                                                            });
                                                            Future.delayed(
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                                () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                              Navigator.of(
                                                                      context)
                                                                  .pushReplacement(
                                                                      MaterialPageRoute(
                                                                fullscreenDialog:
                                                                    true,
                                                                builder:
                                                                    (context) =>
                                                                        ProfileScreen(),
                                                              ));
                                                            });
                                                          }
                                                        }).catchError((error) {
                                                          print(
                                                              'Login Error: $error');
                                                          setState(() {
                                                            loginStatus =
                                                                'Error occured while logging in';
                                                            loginStringColor =
                                                                Colors.red;
                                                          });
                                                        });
                                                      } else {
                                                        setState(() {
                                                          loginStatus =
                                                              'Please enter email & password';
                                                          loginStringColor =
                                                              Colors.red;
                                                        });
                                                      }
                                                      setState(() {
                                                        _isLoggingIn = false;
                                                        textControllerEmail
                                                            .text = '';
                                                        textControllerPassword
                                                            .text = '';
                                                        _isEditingEmail = false;
                                                        _isEditingPassword =
                                                            false;
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 15.0,
                                                        bottom: 15.0,
                                                      ),
                                                      child: _isLoggingIn
                                                          ? SizedBox(
                                                              height: 16,
                                                              width: 16,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                strokeWidth: 2,
                                                                valueColor:
                                                                    new AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Colors.white,
                                                                ),
                                                              ),
                                                            )
                                                          : Text(
                                                              'Log in',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Flexible(
                                                flex: 1,
                                                child: Container(
                                                  width: double.maxFinite,
                                                  child: TextButton(
                                                    style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.deepPurple,
                                                      primary:
                                                          Colors.deepPurple,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                    ),
                                                    onPressed: () async {
                                                      setState(() {
                                                        _isRegistering = true;
                                                      });
                                                      await registerWithEmailPassword(
                                                              textControllerEmail
                                                                  .text,
                                                              textControllerPassword
                                                                  .text)
                                                          .then((result) {
                                                        if (result != null) {
                                                          setState(() {
                                                            loginStatus =
                                                                'You have registered successfully';
                                                            loginStringColor =
                                                                Colors.green;
                                                          });
                                                          print(result);
                                                        }
                                                      }).catchError((error) {
                                                        print(
                                                            'Registration Error: $error');
                                                        setState(() {
                                                          loginStatus =
                                                              'Error occured while registering';
                                                          loginStringColor =
                                                              Colors.red;
                                                        });
                                                      });

                                                      setState(() {
                                                        _isRegistering = false;
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 15.0,
                                                        bottom: 15.0,
                                                      ),
                                                      child: _isRegistering
                                                          ? SizedBox(
                                                              height: 16,
                                                              width: 16,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                strokeWidth: 2,
                                                                valueColor:
                                                                    new AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Colors.white,
                                                                ),
                                                              ),
                                                            )
                                                          : Text(
                                                              'Sign up',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        loginStatus != null
                                            ? Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    bottom: 20.0,
                                                  ),
                                                  child: Text(
                                                    loginStatus,
                                                    style: TextStyle(
                                                      color: loginStringColor,
                                                      fontSize: 14,
                                                      // letterSpacing: 3,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Container(),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 40.0,
                                            right: 40.0,
                                          ),
                                          child: Container(
                                            height: 1,
                                            width: double.maxFinite,
                                            color: Colors.blueGrey[200],
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Center(child: GoogleButton()),
                                        SizedBox(height: 30),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'By proceeding, you agree to our Terms of Use and confirm you have read our Privacy Policy.',
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  .color,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              // letterSpacing: 3,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ))
                      ])
                ])));
  }
}
