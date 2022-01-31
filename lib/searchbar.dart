import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15,left: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(fontSize: 17, color: Colors.black26),
          hintText: 'Search food or restaurent here...',
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black26,
          ),
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
