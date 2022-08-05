import 'package:flutter/material.dart';
import 'package:zenscape_app/model/slidemodel.dart';


class SlideItem extends StatelessWidget {
   int index;
  SlideItem({required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 100,
            width: 300,
            child: Image.asset(slideList[index].imageUrl)),
        SizedBox(height: 20),
        Text(slideList[index].title),
        SizedBox(height: 40),
        Text(
            slideList[index].description,
            textAlign: TextAlign.center),
      ],
    );
  }
}

