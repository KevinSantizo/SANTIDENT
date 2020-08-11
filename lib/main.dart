import 'package:flutter/material.dart';
import 'package:santident/src/authentication/toogleViews.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF59BEB6),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ToogleViewsPages(),
    );
  }
}
