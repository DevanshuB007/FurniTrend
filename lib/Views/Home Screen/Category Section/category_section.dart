import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/All_product_category/products.dart';
import 'package:furlenco/Views/Home%20Screen/Search_Section/search_sec.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchSec(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = 2;

                if (constraints.maxWidth > 1200) {
                  crossAxisCount = 4;
                } else if (constraints.maxWidth > 600) {
                  crossAxisCount = 3;
                }

                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 15,
                    // childAspectRatio: 0.9,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: categoryItems.length,
                  itemBuilder: (context, index) {
                    final category = categoryItems[index];
                    return _buildCategoryItem(
                      context,
                      category['title']!,
                      category['image']!,
                      category['label']!,
                      category['color']!,
                      category['gradientColors']!,
                      () => category['onTap']!(context),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(
    BuildContext context,
    String title,
    String image,
    String label,
    Color labelColor,
    List<Color> gradientColors,
    VoidCallback? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: labelColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> categoryItems = [
  {
    'title': "The best furniture at the Best Prices!",
    'image': "assets/images/sofa.png",
    'label': "BUY BRAND NEW",
    'color': Colors.blue[800]!,
    'gradientColors': [Colors.blue, Colors.teal],
    'onTap': () {},
  },
  {
    'title': "Furniture with Flexibility!",
    'image': "assets/images/chair.png",
    'label': "RENT",
    'color': Colors.deepOrange,
    'gradientColors': [Colors.deepOrange, Colors.purple],
    'onTap': (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Products(selectedCategory: 'Bedroom'),
        ),
      );
    },
  },
  {
    'title': "Affordable Solutions for your home",
    'image': "assets/images/sofa1.png",
    'label': "BUY REFURBISHED",
    'color': const Color(0xFF059baa),
    'gradientColors': [Colors.orange, Colors.deepOrange],
    'onTap': () {},
  },
  {
    'title': "Furniture with Flexibility!",
    'image': "assets/images/furnite.png",
    'label': "UNLMTD",
    'color': Colors.purple,
    'gradientColors': [Colors.purple, Colors.red],
    'onTap': () {},
  },
];
