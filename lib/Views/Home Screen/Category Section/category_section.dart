import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Delivery Location Row
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Location with map icon
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Choose Delivery Location",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Divider(),
                                ListTile(
                                  leading: const Icon(Icons.location_city),
                                  title: const Text("Use Current Location"),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.search),
                                  title: const Text("Search for a Location"),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                const ListTile(
                                  leading: Icon(Icons.map),
                                  title: Text("Choose from Map"),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.location_on, color: Colors.teal),
                        SizedBox(width: 8),
                        Text(
                          "Delivery to 520001",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // Action icons
                  Row(
                    children: const [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 16),
                      Icon(Icons.favorite_border, color: Colors.grey),
                      SizedBox(width: 16),
                      Icon(Icons.shopping_cart, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Grid Layout for Categories
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.count(
              crossAxisCount: screenWidth > 600 ? 4 : 2, // Responsive columns
              mainAxisSpacing: 30,
              crossAxisSpacing: 15,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                // Category 1
                buildCategoryContainer(
                  "BUY BRAND NEW",
                  "The best furniture at the Best Prices!",
                  "assets/images/sofa.png",
                  const [Colors.blue, Colors.teal],
                ),
                // Category 2
                buildCategoryContainer(
                  "RENT",
                  "Furniture with Flexibility!",
                  "assets/images/sofa.png",
                  const [Colors.orange, Colors.red],
                ),
                // Category 3
                buildCategoryContainer(
                  "BUY REFURBISHED",
                  "Affordable solutions for your home",
                  "assets/images/sofa.png",
                  const [Colors.teal, Colors.white],
                ),
                // Category 4
                buildCategoryContainer(
                  "UNLMTD",
                  "Furnish your Entire home at one go!",
                  "assets/images/sofa.png",
                  const [Colors.purple, Colors.purple],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Build Category Container Inline
  Widget buildCategoryContainer(
    String title,
    String subtitle,
    String image,
    List<Color> gradientColors,
  ) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Gradient Border Container
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(2), // Space for gradient border
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
                  // Subtitle at the top
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Image in the middle
                  Expanded(
                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Title overlay at the top of the card
        Positioned(
          top: 160,
          left: 16,
          right: 16,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: gradientColors[0],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
