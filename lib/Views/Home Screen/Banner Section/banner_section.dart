import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final List<String> imagePaths = [
    'assets/images/banner1.jpg',
    'assets/images/banner3.png',
    'assets/images/banner4.png',
    // 'assets/images/banner2.jpeg',
  ];

  int _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 150,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: imagePaths.map((path) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(path),
                  fit: BoxFit.fill,
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 10),

        // Dots Indicator
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: imagePaths.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () {
                  _controller.animateToPage(entry.key);
                  setState(() {
                    _currentIndex = entry.key;
                  });
                },
                child: Container(
                  width: 11.0,
                  height: 11.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == entry.key
                        ? Colors.teal
                        : Colors.grey.shade400,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
