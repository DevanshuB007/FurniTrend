import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/ProductDetailsPage/product_details.dart';
import 'package:furlenco/Views/Home%20Screen/Search_Bar/search_bar.dart';
import 'package:furlenco/Views/Home%20Screen/cart_Section/cart.dart';

class DealsOffer extends StatelessWidget {
  const DealsOffer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      // Bedroom Screen
      {
        'name': "Queen Bed",
        'price': 5000,
        'deliveryTime': "Sunday 15, 2024",
        'image': 'assets/images/bed.webp',
      },
      {
        'name': "Storage Bed",
        'price': 5000,
        'deliveryTime': "Sunday 15, 2024",
        'image': 'assets/images/bed.webp',
      },
      {
        'name': "King Bed",
        'price': 5000,
        'deliveryTime': "Sunday 15, 2024",
        'image': 'assets/images/bed.webp',
      },
      {
        'name': "Single Bed",
        'price': 5000,
        'deliveryTime': "Sunday 15, 2024",
        'image': 'assets/images/bed.webp',
      },
      {
        'name': "Bedside Tables",
        'price': 5000,
        'deliveryTime': "Sunday 15, 2024",
        'image': 'assets/images/bed.webp',
      },
    ];
    final List<Map<String, dynamic>> filteredProducts =
        products; // Define filteredProducts

    final List<String> sortOptions = [
      "Featured",
      "Name A-Z",
      "Name Z-A",
      "Price: Low to High",
      "Price: High to Low",
    ];

    String? selectedSortOption;

    void showSortBottomSheet(BuildContext context) {
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        ),
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Sort by",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    const Divider(),
                    Column(
                      children: sortOptions.map((option) {
                        return GestureDetector(
                          onTap: () {
                            setState(() => selectedSortOption = option);
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 16),
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (selectedSortOption == option)
                                  const Icon(Icons.check_circle,
                                      color: Colors.teal),
                                Text(option,
                                    style: const TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    if (selectedSortOption != null)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Show Results",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        },
      );
    }

    void showFilterBottomSheet(BuildContext context) {
      final categories = [
        "Sub-Category",
        "Price Range",
        "Badge",
        "Storage",
        "Config type",
        "Color",
        "Seating Capacity",
        "Set Type"
      ];

      final Map<String, List<String>> subCategoryData = {
        "Sub-Category": [
          "Multifunctional",
          "King Beds",
          "Bedroom Combos",
          "Storage Beds",
          "Beds without Mattress",
          "Sofa Sets",
          "3 Seater",
          "Queen Beds",
          "Sofa Cum Bed",
          "CentreTables",
          "L Shape",
        ],
        "Price Range": [
          "Under ₹5,000",
          "₹5,000 - ₹10,000",
          "₹10,000 - ₹20,000",
          "₹20,000 - ₹50,000",
          "Above ₹50,000",
        ],
        "Badge": [
          "New Arrivals",
          "Best Sellers",
          "Limited Time Offers",
        ],
        "Storage": [
          "With Storage",
          "Without Storage",
        ],
        "Config type": [
          "Single",
          "Double",
          "Triple",
          "Customizable",
        ],
        "Color": [
          "Red",
          "Blue",
          "Green",
          "Yellow",
          "Black",
          "White",
        ],
        "Seating Capacity": [
          "1 Seater",
          "2 Seater",
          "3 Seater",
          "4 Seater",
        ],
        "Set Type": [
          "Living Room",
          "Bedroom",
          "Dining Room",
          "Outdoor",
        ],
      };

      String selectedCategory = categories[0];
      String? selectedSubCategory;

      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(),
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              final subCategories = subCategoryData[selectedCategory] ?? [];
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Filter by",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: ListView.builder(
                              itemCount: categories.length,
                              itemBuilder: (context, index) {
                                final category = categories[index];
                                return GestureDetector(
                                  onTap: () => setState(() {
                                    selectedCategory = category;
                                    selectedSubCategory = null;
                                  }),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 16),
                                    color: selectedCategory == category
                                        ? Colors.grey[200]
                                        : Colors.transparent,
                                    child: Text(
                                      category,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: selectedCategory == category
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const VerticalDivider(width: 1),
                          Expanded(
                            flex: 4,
                            child: ListView.builder(
                              itemCount: subCategories.length,
                              itemBuilder: (context, index) {
                                final subCategory = subCategories[index];
                                return GestureDetector(
                                  onTap: () => setState(() {
                                    selectedSubCategory = subCategory;
                                  }),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 16),
                                    child: Row(
                                      children: [
                                        Radio<String>(
                                          value: subCategory,
                                          groupValue: selectedSubCategory,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedSubCategory = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          subCategory,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: selectedSubCategory == null
                            ? null
                            : () {
                                Navigator.pop(context);
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          disabledBackgroundColor: Colors.grey[300],
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "SHOW RESULTS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
    }

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
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => CartScreen(
                            //               title: '',
                            //             )));
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ProductDetailsPage(
                      //       name: entry['name'],
                      //     ),
                      //   ),
                      // );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => showSortBottomSheet(context),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.swap_vert_outlined,
                        size: 28, color: Colors.black54),
                    const SizedBox(height: 4),
                    const Text("Sort",
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => showFilterBottomSheet(context),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.filter_list, size: 28, color: Colors.black54),
                    const SizedBox(height: 4),
                    const Text("Filter",
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                  ],
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

  Widget _buildProductCard(
    int index,
    String productName,
    int price,
    String deliveryTime, {
    String? image,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(image ?? 'assets/images/intro3.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (index % 2 == 0)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
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
      ),
    );
  }
}
