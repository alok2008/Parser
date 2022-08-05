import 'package:flutter/material.dart';

class Slide{
  late final String imageUrl;
  late final String title;
  late final String description;

  Slide({required this.imageUrl,required this.description,required this.title});


}

final slideList=[
  Slide(imageUrl: 'assets/images/home.png',
      title: 'This is our Title',
      description: 'Description about the current context.'),
  Slide(imageUrl: 'assets/images/profile.png',
      title: 'Lets Get Started',
      description: 'Additional description'),
  Slide(imageUrl: 'assets/images/start.png',
      title: 'Dive In',
      description: 'Some more additional information')
];