import 'package:flutter/material.dart';

class SlotNames extends StatelessWidget {
  SlotNames({this.slotname});
  final String slotname;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20,left: 3),
          color: Colors.white,
          child: Text(
            slotname,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(right: 10, top: 30),
          color: Colors.white,
          child: Text(
            'View All',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
