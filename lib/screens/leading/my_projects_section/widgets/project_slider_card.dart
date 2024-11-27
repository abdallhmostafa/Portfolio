import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class ProjectSliderCard extends StatelessWidget {
  const ProjectSliderCard({super.key, required this.projectImage});
  final List<String> projectImage;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: projectImage.length,
      options: CarouselOptions(
        // enableInfiniteScroll: true,
        // enlargeCenterPage: true,
        // animateToClosest: true,
        // pageSnapping: false,
        autoPlay: false,
        aspectRatio: 0.8,
        // autoPlayInterval: const Duration(seconds: 4),
        // pauseAutoPlayInFiniteScroll: true,
        // pauseAutoPlayOnManualNavigate: true,
        // pauseAutoPlayOnTouch: true,
        // autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Image.asset(
        projectImage[itemIndex],
        filterQuality: FilterQuality.high,
        fit: BoxFit.cover,
      ),
    );
  }
}
