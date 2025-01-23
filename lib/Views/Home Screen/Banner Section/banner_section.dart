import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselController _carouselController = CarouselController();
    int _currentIndex = 0;
    final List<String> imagePaths = [
      'assets/images/banner.jpg',
      'assets/images/banner.jpg',
      'assets/images/banner.jpg',
      'assets/images/banner.jpg',
      'assets/images/banner.jpg',
      'assets/images/banner.jpg',
    ];

    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 150, // Set the height of the slider
          autoPlay: true, // Enable auto-play for slides
          enlargeCenterPage: true, // Highlight the center slide
          viewportFraction: 0.9, // Set visible slide size
          autoPlayInterval: const Duration(seconds: 3),
        ),
        items: imagePaths.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
