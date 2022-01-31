import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
Widget buildImage(String sliderImage, int index) => Container(
  decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(sliderImage),
        fit: BoxFit.fill,
      ),
      borderRadius: BorderRadius.circular(5),
      color: Colors.grey),
  margin: EdgeInsets.symmetric(horizontal: 12),
);
final sliderImages = [
  'images/sliderimg.jpg',
  'images/foodimg.jpg'
];


class FoodSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: sliderImages.length,
      itemBuilder: (contex, index, realIndex) {
        final sliderImage = sliderImages[index];
        return buildImage(sliderImage, index);
      },
      options: CarouselOptions(height: 80, autoPlay: true),
    );
  }
}
