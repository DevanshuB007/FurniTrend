import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: const [
        CategoryCard(
          // title: "Buy Brand New",
          subtitle: "The best furniture at the Best Prices!",
          // color: Colors.blue,
          image: 'assets/images/sofa.png',
        ),
        // CategoryCard(
        //   // title: "Rent",
        //   subtitle: "Furniture with Flexibility!",
        //   color: Colors.orange,
        //   image: 'assets/images/sofa.png',
        // ),
        // CategoryCard(
        //   // title: "Buy Refurbished",
        //   subtitle: "Affordable solutions for your home",
        //   color: Colors.teal,
        //   image: 'assets/images/sofa.png',
        // ),
        // CategoryCard(
        //   // title: "UNLMTD",
        //   subtitle: "Furnish your Entire home at one go!",
        //   color: Colors.purple,
        //   image: 'assets/images/sofa.png',
        // ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  // final String title;
  final String subtitle;
  // final Color color;
  final String image;

  const CategoryCard({
    super.key,
    // required this.title,
    required this.subtitle,
    // required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: color.withOpacity(0.1),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image, height: 50, fit: BoxFit.cover),
              const SizedBox(height: 10),
              // Text(
              //   'Title', // Replace 'Title' with the actual title if needed
              //   style: const TextStyle(fontWeight: FontWeight.bold),
              // ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
