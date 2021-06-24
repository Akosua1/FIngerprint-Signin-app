import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Comfort extends StatefulWidget {
  @override
  _ComfortState createState() => _ComfortState();
}

class _ComfortState extends State<Comfort> {
  List<OnboardingItem> onboarding = [
    OnboardingItem(
        title: 'COMFORT',
        image: 'lib\assets\image2.png',
        description: 'Deliver items at your comfort'),
    OnboardingItem(
        title: 'COMFORT',
        image: 'lib\assets\image2.png',
        description: 'Deliver items at your comfort'),
    OnboardingItem(
        title: 'COMFORT',
        image: 'lib\assets\image2.png',
        description: 'Deliver items at your comfort')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: onboarding
                    .map((e) => Column(
                          children: [
                            Image.asset(e.image),
                            Text(e.title),
                            Text(e.description)
                          ],
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}

class OnboardingItem {
  String title;
  String image;
  String description;
  OnboardingItem(
      {required this.title, required this.image, required this.description});
}
