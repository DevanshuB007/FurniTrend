import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/All_product_category/products.dart';
import 'package:furlenco/Views/Home%20Screen/Banner%20Section/banner_section.dart';
import 'package:furlenco/Views/Home%20Screen/Search_Section/search_sec.dart';

class ProductListingPage extends StatelessWidget {
  const ProductListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Navigate back when pressed
                    },
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(
                                context); // Navigate back when pressed
                          },
                          icon: Icon(
                            Icons.arrow_back, // Back arrow icon
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        // SizedBox(width: 8), // Optional space between icon and text
                        Text(
                          "Delivery to\n 520001",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 16),
                        Icon(Icons.favorite_border, color: Colors.grey),
                        SizedBox(width: 16),
                        Icon(Icons.shopping_cart, color: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BannerSection(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "RENT FURNITURE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 1,
              mainAxisSpacing: 15,
              padding: const EdgeInsets.all(16),
              children: [
                buildCategory(
                  "Bedroom",
                  Icons.bed,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Products()));
                  },
                ),
                buildCategory(
                  "Living Room",
                  Icons.chair,
                  isPriceDrop: true,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Products()));
                  },
                ),
                buildCategory("Appliances", Icons.kitchen, isPriceDrop: true),
                buildCategory("BHK Combos", Icons.home),
                buildCategory("Storage", Icons.inventory),
                buildCategory("Study", Icons.desk),
                buildCategory("Dining", Icons.dining),
                buildCategory("Z Rated", Icons.star, isNew: true),
                buildCategory("Kids Room", Icons.child_care),
                buildCategory("Fitness", Icons.fitness_center),
                buildCategory("Electronics", Icons.computer),
                buildCategory("Mattress", Icons.king_bed),
                buildCategory("Deal of the Day", Icons.local_offer),
                buildCategory("Luxury", Icons.diamond),
              ],
            ),
          ),
          // Container(
          //   color: Colors.teal.shade50,
          //   padding: const EdgeInsets.all(16),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: const [
          //           Text(
          //             "Appliances",
          //             style:
          //                 TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //           ),
          //           Text(
          //             "That'll make your life easy",
          //             style: TextStyle(fontSize: 14, color: Colors.grey),
          //           ),
          //           Text(
          //             "Starting from ₹279/mo",
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.teal,
          //             ),
          //           ),
          //         ],
          //       ),
          //       const Icon(Icons.arrow_forward, color: Colors.teal),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget buildCategory(String title, IconData icon,
      {bool isPriceDrop = false, bool isNew = false, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.teal.shade50,
                child: Icon(icon, size: 20, color: Colors.teal),
              ),
              if (isPriceDrop)
                Positioned(
                  top: -15,
                  right: -15,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      "PRICE DROP",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (isNew)
                Positioned(
                  top: -16,
                  left: 5,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      "NEW",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
