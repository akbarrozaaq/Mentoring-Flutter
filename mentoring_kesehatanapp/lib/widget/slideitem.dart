import 'package:flutter/material.dart';
import 'package:mentoring_kesehatanapp/widget/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            slideList[index].imageUrl,
            alignment: Alignment.center,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
