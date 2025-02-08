import 'package:flutter/material.dart';

class FullscreenImage extends StatefulWidget {
  final int initialIndex;
  final List<String> images;

  const FullscreenImage({
    Key? key,
    required this.initialIndex,
    required this.images,
  }) : super(key: key);

  @override
  _FullscreenImageState createState() => _FullscreenImageState();
}

class _FullscreenImageState extends State<FullscreenImage> {
  late int _currentIndex; // Tracks the current image index
  late PageController _pageController; // PageController for the PageView

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose of the PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          // Fullscreen Image Viewer
          Expanded(
            child: PageView.builder(
              itemCount: widget.images.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return InteractiveViewer(
                  child: Center(
                    child: Image.asset(
                      widget.images[index],
                      fit: BoxFit.contain,
                      width: double.infinity,
                    ),
                  ),
                );
              },
            ),
          ),

          // Thumbnails
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                      _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _currentIndex == index
                            ? Colors.teal
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: Image.asset(
                      widget.images[index],
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
