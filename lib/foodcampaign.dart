import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCampaign extends StatelessWidget {
  FoodCampaign(
      {this.photo,
      this.off,
      this.foodname,
      this.companyname,
      this.location,
      this.country,
      this.rating,
      this.price});

  final String photo, foodname, companyname, location, country, off, price;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 200,
      margin: EdgeInsets.only(right: 15, bottom: 15, left: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 4),
        child: Row(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    photo,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: -5,
                  child: Image.asset(
                    'images/offer.png',
                  ),
                ),
                Positioned(
                  top: 16,
                  child: Text(
                    off + '\%  off',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  foodname,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  companyname + ',' + location + ',' + country,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 8),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '★' * rating,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '\$' + price,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                    Icon(
                      Icons.add,
                      size: 14,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class FoodCampaignItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FoodCampaign(
            photo: 'images/burgerpic.jpg',
            off: '15',
            foodname: 'Burger',
            companyname: 'Mc Donald',
            location: 'New York',
            country: 'USA',
            rating: 4,
            price: '5',
          ),
          FoodCampaign(
            photo: 'images/burgerpic.jpg',
            off: '15',
            foodname: 'Burger',
            companyname: 'Mc Donald',
            location: 'New York',
            country: 'USA',
            rating: 4,
            price: '5',
          ),
          FoodCampaign(
            photo: 'images/burgerpic.jpg',
            off: '15',
            foodname: 'Burger',
            companyname: 'Mc Donald',
            location: 'New York',
            country: 'USA',
            rating: 4,
            price: '5',
          ),
          FoodCampaign(
            photo: 'images/burgerpic.jpg',
            off: '15',
            foodname: 'Burger',
            companyname: 'Mc Donald',
            location: 'New York',
            country: 'USA',
            rating: 4,
            price: '5',
          ),
        ],
      ),
    );
  }
}
