import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/New_Arival_section/newarrivalslist.dart';
import 'package:furlenco/Views/Home%20Screen/ProductDetailsPage/product_details.dart';

class DealsDay extends StatelessWidget {
  const DealsDay({super.key});

  final List<Map<String, String>> products = const [
    {
      "title": "Modern Sofa",
      "price": "₹1,215/mo",
      "oldPrice": "₹1,587/mo",
      "discount": "-23%",
      "imagePath": "assets/images/sofa.png"
    },
    {
      "title": "Wooden Wardrobe",
      "price": "₹869/mo",
      "oldPrice": "₹1,139/mo",
      "discount": "-23%",
      "imagePath": "assets/images/sofa.png"
    },
    {
      "title": "Dune Upholstered Bed",
      "price": "₹1,215/mo",
      "oldPrice": "₹1,587/mo",
      "discount": "-23%",
      "imagePath": "assets/images/sofa.png"
    },
    {
      "title": "Ella Fabric 3 Seater",
      "price": "₹869/mo",
      "oldPrice": "₹1,139/mo",
      "discount": "-23%",
      "imagePath": "assets/images/sofa.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader(
              context, "New Arrivals", "To Rent", Colors.orange),
          _buildHorizontalList(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(
      BuildContext context, String title, String subtitle, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.arrow_downward, color: iconColor),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Newarrivalslist()));
            },
            child: const Text(
              "View All →",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalList() {
    return SizedBox(
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children:
            products.map((product) => ProductCard(product: product)).toList(),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Map<String, String> product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Tapped on ${product["title"]}");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(name: product["title"]!),
          ),
        );
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                product["imagePath"]!,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product["title"]!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        product["price"]!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        product["oldPrice"]!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.teal.shade50,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      product["discount"]!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
