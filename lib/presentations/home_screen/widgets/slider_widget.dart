import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/data.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      height: 150.0,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 150.0,
          autoPlay: true,
          viewportFraction: isLandscape ? .7 : .9,
          autoPlayInterval: const Duration(seconds: 3),
          initialPage: 0,
          autoPlayCurve: Curves.slowMiddle,
        ),
        items: images.map(
          (slide) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(slide),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
