import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/Home%20Section/home_scr.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> slides = [
    {
      'image': 'assets/images/intro1.jpg',
      'title': "Furniture you'll be proud of",
      'description':
          "With unique designs, quality that stands the test of time, and a range that’s modern and chic - we create furniture that tells stories",
    },
    {
      'image': 'assets/images/intro2.jpg',
      'title': "Comfort and Style",
      'description':
          "Discover furniture that brings both comfort and elegance to your home.",
    },
    {
      'image': 'assets/images/intro3.jpg',
      'title': "Affordable and Reliable",
      'description':
          "Quality furniture at prices that suit your budget, without compromising on style.",
    },
  ];

  @override
  void initState() {
    super.initState();
    _checkIfFirstTime();
  }

  Future<void> _checkIfFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (!isFirstTime) {
      _navigateToHome();
    }
  }

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);
    _navigateToHome();
  }

  void _navigateToNextPage() {
    if (_currentPage < slides.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _navigateToPreviousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView for slides
          PageView.builder(
            controller: _pageController,
            itemCount: slides.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(slides[index]['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            slides[index]['title']!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                              color: Colors.teal,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            slides[index]['description']!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 5,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: _navigateToPreviousPage,
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 36,
                      color: _currentPage > 0
                          ? Colors.grey[600]
                          : Colors.grey[300],
                    ),
                    Row(
                      children: List.generate(slides.length, (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: index == _currentPage
                                ? Colors.teal
                                : Colors.grey[300],
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                    IconButton(
                      onPressed: _navigateToNextPage,
                      icon: const Icon(Icons.arrow_forward),
                      iconSize: 36,
                      color: _currentPage < slides.length - 1
                          ? Colors.grey[600]
                          : Colors.grey[300],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Skip Text
                TextButton(
                  onPressed: _completeOnboarding,
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
