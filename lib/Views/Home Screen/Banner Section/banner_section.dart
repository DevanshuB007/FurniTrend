import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> imagePaths = [
    //   // 'assets/images/1.webp',
    //   'assets/images/banner2.jpeg',
    //   'assets/images/banner2.jpeg',
    // ];

    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 150, // Height of the carousel
          autoPlay: true, // Enable automatic sliding
          enlargeCenterPage: true, // Center slide appears larger
          viewportFraction: 0.9, // Controls how much space each slide occupies
          autoPlayInterval: const Duration(seconds: 3),
        ),
        items: [
          // First Slide
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/banner2.jpeg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Second Slide
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/banner2.jpeg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
