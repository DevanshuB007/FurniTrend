import 'package:flutter/material.dart';

class DealsOffer extends StatelessWidget {
  const DealsOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
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
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        const Text(
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
                Text("Fillter"),
              ],
            )
          ],
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
