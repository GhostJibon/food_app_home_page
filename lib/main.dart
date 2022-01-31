import 'package:flutter/material.dart';
import 'home.dart';
import 'package:ghostjibon/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Home.id,
      routes: {
        Home.id:(context) => Home(),
      },
    );
  }
}

