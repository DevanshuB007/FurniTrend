import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> allCategories = [
    "Queen Bed",
    "Chair",
    "Microwave",
    "Recliner",
    "Wardrobe",
    "Study Table",
    "Dining Table",
    "Bookshelf",
    "Sofa",
    "TV Stand",
    "Coffee Table",
  ];

  List<String> displayedCategories = [];

  @override
  void initState() {
    super.initState();
    // Initialize displayedCategories with allCategories
    displayedCategories = allCategories;
  }

  void filterCategories(String query) {
    setState(() {
      if (query.isEmpty) {
        displayedCategories = allCategories;
      } else {
        displayedCategories = allCategories
            .where((category) =>
                category.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: TextField(
          onChanged: filterCategories,
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: GoogleFonts.dmSans(fontSize: 18, color: Colors.grey),
            prefixIcon: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.grey),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Most Searched and Bought",
              style: GoogleFonts.lora(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: displayedCategories.map((category) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: categoryButton(category),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget categoryButton(String category) {
    return GestureDetector(
      onTap: () {
        // Handle button click
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.trending_up,
              size: 18,
              color: Colors.grey,
            ),
            const SizedBox(width: 8),
            Text(
              category,
              style: GoogleFonts.dmSans(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
