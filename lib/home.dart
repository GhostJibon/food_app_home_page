import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'popularfoodnearby.dart';
import 'categories.dart';
import 'slotname.dart';
import 'searchbar.dart';
import 'slider.dart';
import 'foodcampaign.dart';
import 'resturants.dart';

class Home extends StatefulWidget {
  static const String id = 'home';

  @override
  _HomeState createState() => _HomeState();
}

String valueChoosen;
List listitems = ['All', 'Take Away', 'Home Delivery'];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.home,
            color: Colors.black26,
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: null,
                  icon: Stack(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                      Positioned(
                        left: 12,
                        child: Icon(
                          Icons.brightness_1,
                          color: Colors.red,
                          size: 9,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                // The search Bar is here
                SearchBar(),
                SizedBox(
                  height: 28,
                ),
                //The Slider is here
                FoodSlider(),
                //Category Bar is here
                SlotNames(
                  slotname: 'Categories',
                ),
                SizedBox(
                  height: 15,
                ),
                //Catagoriy names are here
                Catagories(),
                SizedBox(
                  height: 15,
                ),
                //Food Nearby bar slot name is here
                SlotNames(
                  slotname: 'Popular Food Nearby',
                ),
                SizedBox(
                  height: 15,
                ),
                //Food names are here
                PopularFoodNearby(),
                //Food Campain bar name is here
                SlotNames(
                  slotname: 'Food Campaign',
                ),
                SizedBox(
                  height: 15,
                ),
                //Food Campain items are here
                FoodCampaignItems(),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 3),
                      color: Colors.white,
                      child: Text(
                        'Restaurants',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: DropdownButton(
                          hint: Text('Choose item'),
                          icon: Icon(Icons.list_outlined),
                          value: valueChoosen,
                          items: listitems.map((valueItem) {
                            return DropdownMenuItem(
                              child: Text(valueItem),
                              value: valueItem,
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              valueChoosen = newValue;
                            });
                          }),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),

                AllResturantNames(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
