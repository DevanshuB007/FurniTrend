import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  final String selectedCategory;

  const Products({Key? key, required this.selectedCategory}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  late String selectedCategory;
  Set<String> selectedSubcategories = {};

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
    "Storage": {
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
    "Deal of the Day": {
      "widget": const Center(
        child: Text("Deal of the day"),
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
    // Bedroom Screen
    {
      'name': "Queen Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "Queen Beds",
      'image': 'assets/images/bed.webp',
    },
    {
      'name': "Storage Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "Storage Beds",
      'image': 'assets/images/bed.webp',
    },
    {
      'name': "King Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "King Beds",
      'image': 'assets/images/bed.webp',
    },
    {
      'name': "Single Bed",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "Single Beds",
      'image': 'assets/images/bed.webp',
    },
    {
      'name': "Bedside Tables",
      'price': 5000,
      'deliveryTime': "Sunday 15, 2024",
      'category': "Bedroom",
      'subCategory': "Bedside Tables",
      'image': 'assets/images/bed.webp',
    },
    // Leaving Room

    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "3 Seater",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Sofa Sets",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "2 Seater",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "1 Seater",
      'image': 'assets/images/intro3.jpg',
    },

    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Recliner",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "L Shape",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Sofa cum bed",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Multifunctional",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Center Tables",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Center Tables",
      'image': 'assets/images/intro3.jpg',
    },
    {
      'name': "Sofa",
      'price': 2000,
      'deliveryTime': "Saturday 14, 2024",
      'category': "Living Room",
      'subCategory': "Living Room Combos",
      'image': 'assets/images/intro3.jpg',
    },
    // Appliance Screen

    {
      'name': "TV",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Appliances",
      'subCategory': "Washing Machines",
      'image': 'assets/images/appliances.jpg',
    },

    {
      'name':
          "Voltas Beko, A TATA Product 183 L 5 Star Direct Cool Single Door Refrigerator (2024 Model, RDC215A/W0BWRTM0B00GO, Bonita Wine, Fresh Box and Quick Freeze Technology, with Base Drawer)",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Appliances",
      'subCategory': "Refrigerators",
      'image': 'assets/images/freez.jpg',
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
      'subCategory': "TV",
      'image': 'assets/images/appliances.jpg',
    },
    {
      'name': "TV",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Appliances",
      'subCategory': "Water Purifier",
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

    // Storage Screen

    {
      'name': "Storage Combo",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Storage",
      'subCategory': "Wardrobes",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Storage Combo",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Storage",
      'subCategory': "Chest of Drawers",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Storage Combo",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Storage",
      'subCategory': "Entertainment Units",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Storage Combo",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Storage",
      'subCategory': "Dressing Table",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Storage Combo",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Storage",
      'subCategory': "Bookshelves",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Storage Combo",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Storage",
      'subCategory': "Shoe Racks",
      'image': 'assets/images/bhk.png',
    },
    {
      'name': "Storage Combo",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Storage",
      'subCategory': "Storage Combos",
      'image': 'assets/images/bhk.png',
    },

    // Study Screen

    {
      'name': "Study Chair",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Study",
      'subCategory': "Study Tables",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "Study Chair",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Study",
      'subCategory': "office chair",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "Study Chair",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Study",
      'subCategory': "study combos",
      'image': 'assets/images/intro1.jpeg',
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
    {
      'name': "Dining Table",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Dining",
      'subCategory': "Dining chair",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "Dining Table",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Dining",
      'subCategory': "Dining Combos",
      'image': 'assets/images/intro1.jpeg',
    },

    // z Rated File
    {
      'name': "Double bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Z Rated",
      'subCategory': "Sleep",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "Double bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Z Rated",
      'subCategory': "Chill",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "Double bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Z Rated",
      'subCategory': "Work",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "Double bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Z Rated",
      'subCategory': "Z Rated Combos",
      'image': 'assets/images/intro1.jpeg',
    },

    //Kids Room

    {
      'name': "kids bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Kids Room",
      'subCategory': "Kids Study",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "kids bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Kids Room",
      'subCategory': "Kids Bed",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "kids bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Kids Room",
      'subCategory': "Kids Crib",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "kids bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Kids Room",
      'subCategory': "Kids Seating",
      'image': 'assets/images/intro1.jpeg',
    },
    {
      'name': "kids bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Kids Room",
      'subCategory': "Kids Storage",
      'image': 'assets/images/intro1.jpeg',
    },

    // Fitness Screen

    {
      'name': "Dumble",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Fitness",
      'subCategory': "Treadmills",
      'image': 'assets/images/intro1.jpeg',
    },

    // Electronics Screen

    {
      'name': "Laptop",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Electronics",
      'subCategory': "Laptops",
      'image': 'assets/images/intro1.jpeg',
    },

    // Mattress Screen

    {
      'name': "Mattres",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Mattress",
      'subCategory': "Mattress",
      'image': 'assets/images/intro1.jpeg',
    },

    // Deal of the day Screen

    {
      'name': "Queen Bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Deal of the Day",
      'subCategory': "",
      'image': 'assets/images/intro1.jpeg',
    },

    // Luxury Screen

    {
      'name': "Queen Bed",
      'price': 3000,
      'deliveryTime': "Monday 16, 2024",
      'category': "Luxury",
      'subCategory': "",
      'image': 'assets/images/intro1.jpeg',
    },
  ];

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.selectedCategory;
  }

  final List<String> sortOptions = [
    "Featured",
    "Name A-Z",
    "Name Z-A",
    "Price: Low to High",
    "Price: High to Low",
  ];

  // Selected sort option (initially null)
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
                  // Header with Close Button
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

                  // Sort Options List
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

                  // Show Results Button only when a filter is selected
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
                  // If no filter is selected, the button will not show
                ],
              ),
            );
          },
        );
      },
    );
  }

  void showFilterBottomSheet(BuildContext context) {
    // Define filter categories and subcategories for each category
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
      isScrollControlled: true, // Makes the BottomSheet full-screen
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          // borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
          ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final subCategories = subCategoryData[selectedCategory] ?? [];
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                children: [
                  // Header with Close Button
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

                  // Main Filter UI
                  Expanded(
                    child: Row(
                      children: [
                        // Filter Categories (Left)
                        Expanded(
                          flex: 2,
                          child: ListView.builder(
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              final category = categories[index];
                              return GestureDetector(
                                onTap: () => setState(() {
                                  selectedCategory = category;
                                  selectedSubCategory = null; // Reset selection
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

                        // Subcategories (Right)
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

                  // Show Results Button
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: selectedSubCategory == null
                          ? null
                          : () {
                              Navigator.pop(context);
                              // Perform action with selectedSubCategory
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

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredProducts = products.where((product) {
      if (product['category'] != selectedCategory) return false;

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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Sort Button
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

              // Filter Button
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
            selectedSubcategories.clear();
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
