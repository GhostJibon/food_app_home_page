import 'package:flutter/material.dart';

class FoodTitles extends StatelessWidget {
  FoodTitles(
      {@required this.foodimage,
      this.foodname,
      this.price,
      this.resturantname,
      this.rating});
  final ImageProvider foodimage;
  final String foodname;
  final String resturantname;
  final String price;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 150,
      padding: EdgeInsets.only(right: 15, bottom: 15,left: 3),
      child: Container(
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: foodimage,
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    resturantname,
                    style: TextStyle(color: Colors.black54, fontSize: 8),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Text(
                          '\$' + price,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        color: Colors.white,
                        child: Text(
                          '★ ' + rating,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularFoodNearby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FoodTitles(
            foodimage: AssetImage('images/foodimg.jpg'),
            foodname: 'England Package',
            price: '399.00',
            resturantname: '3 Days 2 Night',
            rating: '4.9',
          ),
          FoodTitles(
            foodimage: AssetImage('images/foodimg.jpg'),
            foodname: 'England Package',
            price: '399.00',
            resturantname: '3 Days 2 Night',
            rating: '4.9',
          ),
          FoodTitles(
            foodimage: AssetImage('images/foodimg.jpg'),
            foodname: 'England Package',
            price: '399.00',
            resturantname: '3 Days 2 Night',
            rating: '4.9',
          ),
          FoodTitles(
            foodimage: AssetImage('images/foodimg.jpg'),
            foodname: 'England Package',
            price: '399.00',
            resturantname: '3 Days 2 Night',
            rating: '4.9',
          ),
        ],
      ),
    );
  }
}
