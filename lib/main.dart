import 'package:flutter/material.dart';
import 'package:santident/src/authentication/toogleViews.dart';
import 'package:santident/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF59BEB6),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ToogleViewsPages(),
      routes: {
        '/home': (BuildContext contex) => HomePage()
      },
    );
  }
}
