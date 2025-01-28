import 'package:flutter/material.dart';

class Newarrivalslist extends StatelessWidget {
  const Newarrivalslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Delivery to',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              '132001',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Category Tabs
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   padding: const EdgeInsets.symmetric(horizontal: 8),
          //   child: Row(
          //     children: [
          //       _buildTab("Bedroom", true),
          //       _buildTab("Living Room", false),
          //       _buildTab("Appliances", false),
          //       _buildTab("Queen Beds", false),
          //       _buildTab("Storage Beds", false),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 8),

          // Filter Tags
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   padding: const EdgeInsets.symmetric(horizontal: 8),
          //   child: Row(
          //     children: [
          //       _buildFilterTag("Queen Beds"),
          //       _buildFilterTag("Storage Beds"),
          //       _buildFilterTag("King Beds"),
          //     ],
          //   ),
          // ),
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
                return _buildProductCard(index);
              },
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.sort, color: Colors.white),
                label: const Text("Sort"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.filter_list, color: Colors.white),
                label: const Text("Filter"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(String title, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ChoiceChip(
        label: Text(title),
        selected: isSelected,
        onSelected: (_) {},
        selectedColor: Colors.orange,
        backgroundColor: Colors.grey.shade200,
        labelStyle: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
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

  Widget _buildProductCard(int index) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage('assets/images/sofa.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Product Details
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index % 2 == 0)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Z Rated',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                const SizedBox(height: 8),
                const Text(
                  "Blanca Engineered Wood Queen Bed",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  "₹869/mo",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Delivery by 31 Jan",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
