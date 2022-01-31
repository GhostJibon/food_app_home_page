import 'package:flutter/material.dart';

class ResturantPage extends StatefulWidget {
  @override
  _ResturantPageState createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.pinkAccent,
        height: 1000,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 190,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
// height: 224,
// child: Image.asset(
// 'images/mcdcover.jpg',
// fit: BoxFit.cover,
// height: double.infinity,
// width: double.infinity,
// alignment: Alignment.center,
// ),
// ),
// Container(
// color: Colors.red,
// width: double.infinity,
// height: 200,
// ),
