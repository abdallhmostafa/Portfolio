import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/constants.dart';

class BgSliderBanner extends StatelessWidget {
  const BgSliderBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppConstant.defaultRadius),
          bottomLeft: Radius.circular(AppConstant.defaultRadius),
        ),
      ),
      child: CarouselSlider.builder(
        itemCount: bgBanerImage.length,
        options: CarouselOptions(
          autoPlay: true,
          // I need image to take full width
          // aspectRatio: 16 / 9,

          // viewportFraction: 1,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Image.asset(
          bgBanerImage[itemIndex],
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

const List<String> bgBanerImage = [
  "assets/images/bg_3.jpeg",
  "assets/images/bg_4.jpeg",
  "assets/images/bg_2.jpeg",
  "assets/images/bg_5.jpeg",
  "assets/images/bg_6.jpeg",
  "assets/images/bg_8.jpeg",
  "assets/images/bg_9.jpeg",
  "assets/images/bg_10.jpeg",
  "assets/images/bg_11.jpeg",
];
