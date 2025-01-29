import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/All_product_category/appliances.dart';
import 'package:furlenco/Views/Home%20Screen/All_product_category/leavingroom.dart';
import 'package:furlenco/Views/Home%20Screen/Search_Section/search_sec.dart';

// Import category-specific pages
import 'package:furlenco/Views/Home%20Screen/All_product_category/bedroom.dart';

class Products extends StatelessWidget {
  Products({super.key});

  // List of categories using a Map
  final List<Map<String, dynamic>> categories = [
    {"title": "Bedroom", "page": Bedroom()},
    {"title": "Living Room", "page": Leavingroom()},
    {"title": "Appliances", "page": Appliances()},
    // {"title": "Queen Beds", "page": QueenBeds()},
    // {"title": "Storage Beds", "page": StorageBeds()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        toolbarHeight: 100,
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            SearchSec(),
          ],
        ),
      ),
      body: Column(
        children: [
          // Category Tabs with Navigation
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: categories
                  .map((category) =>
                      _buildTab(context, category["title"], category["page"]))
                  .toList(),
            ),
          ),
          const SizedBox(height: 8),

          // Filter Tags
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: ["Queen Beds", "Storage Beds", "King Beds"]
                  .map((tag) => _buildFilterTag(tag))
                  .toList(),
            ),
          ),
          const SizedBox(height: 8),

          // Product Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 5,
                mainAxisSpacing: 8,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(); // Replace with _buildProductCard when needed
              },
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.swap_vert_outlined),
                Text("Sort"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.filter_list),
                Text("Filter"),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Updated tab function with navigation
  Widget _buildTab(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ChoiceChip(
        label: Text(title),
        selected: false,
        onSelected: (_) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        selectedColor: Colors.orange,
        backgroundColor: Colors.grey.shade200,
        labelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildFilterTag(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Chip(
        label: Text(title),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
