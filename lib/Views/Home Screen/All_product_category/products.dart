import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final Map<String, dynamic> categories = {
    "Bedroom": {
      "widget": const Center(child: Text("Bedroom Screen")),
      "subcategories": [
        "Queen Beds",
        "Storage Beds",
        "King Beds",
        "Single Beds",
        "Bedside Tables",
        "Beds without Mattress",
        "Mattress",
        "Bedroom Combos"
      ],
    },
    "Living Room": {
      "widget": const Center(child: Text("Living Room")),
      "subcategories": [
        "3 Seater",
        "Sofa Sets",
        "2 Seater",
        "1 Seater",
        "Recliner",
        "L Shape",
        "Sofa cum Bed",
        "Multifunctional",
        "CenterTables",
        "CentreTables",
        "Living Room Combos"
      ],
    },
    "Appliances": {
      "widget": const Center(child: Text("Appliances Screen")),
      "subcategories": [
        "Washing Machines",
        "Refrigerators",
        "TV",
        "Microwave",
        "Water Purifier",
        "Appliance Combos",
        "AC"
      ],
    },
    "BHK Combos": {
      "widget": const Center(child: Text("BHK Combos")),
      "subcategories": [
        "Bedroom Combos",
        "Living Room Combos",
        "Appliance Combos",
        "Storage Combos",
        "Dining Combos",
        "Study Combos",
      ]
    },
    "Storag": {
      "widget": const Center(child: Text("Storage")),
      "subcategories": [
        "Wardrobes",
        "Chest of Drawers",
        "Entertainment Units",
        "Dressing Table",
        "Bookshelves",
        "Shoe Racks",
        "Storage Combos",
      ]
    },
    "Study": {
      "widget": const Center(child: Text("Study")),
      "subcategories": [
        "Study Tables",
        "Office Chairs",
        "Study Combos",
      ]
    },
    "Dining": {
      "widget": const Center(child: Text("Dining Screen")),
      "subcategories": [
        "Dining Tables",
        "Dining Chairs",
        "Dining Combos",
      ],
    },
    "Z Rated": {
      "widget": const Center(child: Text("Z Rated")),
      "subcategories": ["Sleep", "Chill", "Work", "Z Rated Combos"],
    },
    "Kids Room": {
      "widget": const Center(child: Text("Kids Room")),
      "subcategories": [
        "Kids Study",
        "Kids Bed",
        "Kids Crib",
        "Kids Seating",
        "Kids Storage",
      ],
    },
    "Fitness": {
      "widget": const Center(child: Text("Fitness")),
      "subcategories": ["Treadmills"],
    },
    "Electronics": {
      "widget": const Center(child: Text("Electronics")),
      "subcategories": ["Laptops"],
    },
    "Mattress": {
      "widget": const Center(child: Text("Mattress")),
      "subcategories": ["Mattress"],
    },
    "Deal of the day": {
      "widget": const Center(
        child: Text("Deal of the day Screen"),
      ),
      "subcategories": [""],
    },
    "Luxury": {
      "widget": const Center(
        child: Text("Luxury Screen"),
      ),
      "subcategories": [""],
    },
  };

  final List<Map<String, dynamic>> products = [
    // Bedroom
    {
      'name': "Queen Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "Queen Beds",
      'image': 'assets/images/chair.png',
    },
    {
      'name': "Storage Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "Storage Beds",
      'image': 'assets/images/chair.png',
    },
    {
      'name': "King Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "King Beds",
      'image': 'assets/images/chair.png',
    },
    {
      'name': "Single Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "Single Beds",
      'image': 'assets/images/chair.png',
    },
    {
      'name': "King Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "King Beds",
      'image': 'assets/images/chair.png',
    },
    // Leaving Room
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Sofa Sets",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "3 Seater",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "2 Seater",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "1 Seater",
      'image': 'assets/images/sofa.png',
    },

    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Recliner",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "L Shape",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Sofa cu bed",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Multifunctional",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Center Tables",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Center Tables",
      'image': 'assets/images/sofa.png',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Living Room Combos",
      'image': 'assets/images/sofa.png',
    },
    // Appliance Screen

    {
      'name': "TV",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Washing MAchines",
      'subCategory': "TV",
      'image': 'assets/images/appliances.jpg',
    },

    {
      'name': "TV",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Refrigerators",
      'subCategory': "TV",
      'image': 'assets/images/appliances.jpg',
    },
    {
      'name': "TV",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Appliances",
      'subCategory': "Microwave",
      'image': 'assets/images/appliances.jpg',
    },
    {
      'name': "TV",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Appliances",
      'subCategory': "Water Purifiner",
      'image': 'assets/images/appliances.jpg',
    },
    {
      'name': "TV",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Appliances",
      'subCategory': "Appliance Combos",
      'image': 'assets/images/appliances.jpg',
    },
    {
      'name': "TV",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Appliances",
      'subCategory': "AC",
      'image': 'assets/images/appliances.jpg',
    },

    // BHK Combos

    {
      'name': "Combos",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "BHK Combos",
      'subCategory': "Bedroom Combos",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Combos",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "BHK Combos",
      'subCategory': "Living Room Combos",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Combos",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "BHK Combos",
      'subCategory': "Appliances Combos",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Combos",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "BHK Combos",
      'subCategory': "Storage Combos",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Combos",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "BHK Combos",
      'subCategory': "Dining Combos",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Combos",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "BHK Combos",
      'subCategory': "Study Combos",
      'image': 'assets/images/bhk.png',
    },

    //Dining Screen
    {
      'name': "Dining Table",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Dining",
      'subCategory': "Dining Tables",
      'image': 'assets/images/intro1.jpeg',
    },
  ];

  String selectedCategory = "Bedroom";
  Set<String> selectedSubcategories = {};

  @override
  Widget build(BuildContext context) {
    // Filter products based on selected category and subcategories
    List<Map<String, dynamic>> filteredProducts = products.where((product) {
      // Filter by category
      if (product['category'] != selectedCategory) return false;

      // If subcategories are selected, filter by them
      if (selectedSubcategories.isNotEmpty &&
          !selectedSubcategories.contains(product['subCategory'])) {
        return false;
      }

      return true;
    }).toList();

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
                      Navigator.pop(context); // Navigate back when pressed
                    },
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context); // Navigate back
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.keys
                    .map((title) => _buildCategoryTab(title))
                    .toList(),
              ),
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: (categories[selectedCategory]['subcategories']
                        as List<String>)
                    .map((sub) => _buildSubcategoryChip(sub))
                    .toList(),
              ),
            ),
            Expanded(
              child: filteredProducts.isEmpty
                  ? const Center(child: Text("No products available"))
                  : GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemCount: filteredProducts.length,
                      itemBuilder: (context, index) {
                        var entry = filteredProducts[index];

                        return _buildProductCard(
                          index,
                          entry['name'],
                          entry['price'],
                          entry['deliveryTime'],
                          image: entry['image'],
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  // Build Category Tab
  Widget _buildCategoryTab(String title) {
    bool isSelected = selectedCategory == title;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(title),
        selected: isSelected,
        onSelected: (_) {
          setState(() {
            selectedCategory = title;
            selectedSubcategories
                .clear(); // Reset subcategories on category change
          });
        },
        selectedColor: Colors.teal,
        backgroundColor: Colors.grey.shade200,
        labelStyle: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  // Build Subcategory Chip
  Widget _buildSubcategoryChip(String title) {
    bool isSelected = selectedSubcategories.contains(title);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(title),
        selected: isSelected,
        onSelected: (_) {
          setState(() {
            if (isSelected) {
              selectedSubcategories.remove(title);
            } else {
              selectedSubcategories.add(title);
            }
          });
        },
        selectedColor: Colors.orange.shade200,
        backgroundColor: Colors.grey.shade100,
        labelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildProductCard(
    int index,
    String productName,
    int price,
    String deliveryTime, {
    String? image,
  }) {
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
                image: AssetImage(image ?? 'assets/images/intro3.jpeg'),
                fit: BoxFit.contain,
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
                Text(
                  productName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  '${price.toString()}',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  deliveryTime,
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
