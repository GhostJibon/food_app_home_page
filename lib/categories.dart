import 'package:flutter/material.dart';

class Reusable_catagories extends StatelessWidget {
  Reusable_catagories({@required this.label, this.icon, this.image});
  final IconData icon;
  final String label;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}

class Catagories extends StatelessWidget {
  const Catagories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 3,
          ),
          Reusable_catagories(
            image: 'images/all.jpg',
            label: 'All',
          ),
          Reusable_catagories(
            image: 'images/coffee.jpg',
            label: 'Coffee',
          ),
          Reusable_catagories(
            image: 'images/drink.jpg',
            label: 'Drinks',
          ),
          Reusable_catagories(
            image: 'images/fastfood.jpg',
            label: 'Fast Food',
          ),
          Reusable_catagories(
            image: 'images/cake.jpg',
            label: 'Cake',
          ),
          Reusable_catagories(
            image: 'images/cake.jpg',
            label: 'Sushi',
          ),
        ],
      ),
    );
  }
}
