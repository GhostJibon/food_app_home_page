import 'package:flutter/material.dart';
import 'package:ghostjibon/resturantpage.dart';
import 'package:like_button/like_button.dart';

class Resturant extends StatelessWidget {
  Resturant(
      {this.resturantlogo,
      this.companyName,
      this.location,
      this.foodtype,
      this.offer,
      this.rating});

  final String offer, resturantlogo, companyName, location, foodtype;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResturantPage()));
      },
      child: Container(
        margin: EdgeInsets.only(left: 3, top: 10, bottom: 6),
        child: Row(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    resturantlogo,
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
                    offer + '\%  off',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      companyName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      location + ',',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                    Text(
                      foodtype,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                    Text(
                      '★' * rating,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrangeAccent,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Center(
                child: LikeButton(
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllResturantNames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Resturant(
            resturantlogo: 'images/mcd.jpg',
            offer: '27',
            companyName: 'Mc Donald\'s ',
            location: 'American cuisine',
            foodtype: 'Fast Food',
            rating: 4,
          ),
          Resturant(
            resturantlogo: 'images/star.jpg',
            offer: '37',
            companyName: 'Starbuks ',
            location: 'American cuisine',
            foodtype: 'Fast Food',
            rating: 2,
          ),
          Resturant(
            resturantlogo: 'images/dom.jpg',
            offer: '27',
            companyName: 'Dominos ',
            location: 'American cuisine',
            foodtype: 'Fast Food',
            rating: 4,
          ),
          Resturant(
            resturantlogo: 'images/dom.jpg',
            offer: '3',
            companyName: 'Dominos',
            location: 'American cuisine',
            foodtype: 'Fast Food',
            rating: 5,
          ),
        ],
      ),
    );
  }
}
