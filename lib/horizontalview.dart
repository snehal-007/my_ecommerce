import 'package:flutter/material.dart';

class HorizontalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'assets/images/snehhh.jpeg',
            image_caption: 'snehal',
          ),
          Category(
            image_location: 'assets/images/snehhh.jpeg',
            image_caption: 'snehal',
          ),
          Category(
            image_location: 'assets/images/snehhh.jpeg',
            image_caption: 'snehal',
          ),
          Category(
            image_location: 'assets/images/snehhh.jpeg',
            image_caption: 'snehal',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location),
            subtitle: Text(image_caption),
          ),
        ),
      ),
    );
  }
}
