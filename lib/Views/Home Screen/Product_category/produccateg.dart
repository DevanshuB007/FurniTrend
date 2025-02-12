import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/All_product_category/products.dart';
import 'package:furlenco/Views/Home%20Screen/Banner%20Section/banner_section.dart';
import 'package:furlenco/Views/Home%20Screen/Search_Bar/search_bar.dart';
import 'package:furlenco/Views/Home%20Screen/Search_Section/search_sec.dart';
import 'package:furlenco/Views/Home%20Screen/cart_Section/cart.dart';

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
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      // SizedBox(width: 8),
                      Text(
                        "Delivery to\n 520001",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        InkWell(
                          child: Icon(Icons.search, color: Colors.grey),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Search()));
                          },
                        ),
                        SizedBox(width: 16),
                        Icon(Icons.favorite_border, color: Colors.grey),
                        SizedBox(width: 16),
                        InkWell(
                          child: Icon(Icons.shopping_cart, color: Colors.grey),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartScreen(
                                          title: '',
                                        )));
                          },
                        ),
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
              mainAxisSpacing: 20,
              padding: const EdgeInsets.all(16),
              children: [
                buildCategory(
                  "Bedroom",
                  Icons.bed,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Bedroom"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Living Room",
                  Icons.chair,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Living Room"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Appliances",
                  Icons.kitchen,
                  isPriceDrop: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Appliances"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "BHK Combos",
                  Icons.home,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "BHK Combos"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Storage",
                  Icons.inventory,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Storage"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Study",
                  Icons.menu_book,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Study"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Dining",
                  Icons.dining,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Dining"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Z Rated",
                  Icons.star,
                  isNew: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Z Rated"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Kids Room",
                  Icons.child_care,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Kids Room"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Fitness",
                  Icons.fitness_center,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Fitness"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Electronics",
                  Icons.computer,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Electronics"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Mattress",
                  Icons.king_bed,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Mattress"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Deal of the Day",
                  Icons.local_offer,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Deal of the Day"),
                      ),
                    );
                  },
                ),
                buildCategory(
                  "Luxury",
                  Icons.diamond,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(selectedCategory: "Luxury"),
                      ),
                    );
                  },
                ),
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
                child: Icon(icon, size: 25, color: Colors.teal),
              ),
              if (isPriceDrop)
                Positioned(
                  top: -18,
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
                  left: 2,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
