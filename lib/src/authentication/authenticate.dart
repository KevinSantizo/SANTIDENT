import 'package:flutter/material.dart';
import 'package:santident/src/authentication/login.dart';
import 'package:santident/src/authentication/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toogleViews(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return Login(toogleViews: toogleViews);
    } else {
      return Register(toogleViews: toogleViews);
    }
  }
}
