import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;

  Slide({
    @required this.imageUrl,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/onboard1.png',
  ),
  Slide(
    imageUrl: 'assets/onboard2.jpg',
  ),
  Slide(
    imageUrl: 'assets/onboard3.png',
  ),
];
