import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'armywatch',
      theme: ThemeData(
        fontFamily: 'Roboto',
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: Home(),
    );
  }

}

