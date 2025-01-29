import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/Offer%20Section/OffersScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Offers & Discounts",
                style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OffersScreen()));
                },
                child: const Text(
                  "View All →",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                OfferCard(
                  title: "Extra ₹100 off on SBI",
                  subtitle: "Applicable on SBI Credit cards\nNo code required",
                ),
                OfferCard(
                  title: "Flat 15% Off",
                  subtitle:
                      "Get flat 15% off up to ₹500\nUse Code: FURNITURE15",
                ),
                OfferCard(
                  title: "Extra ₹100 off on SBI",
                  subtitle: "Applicable on SBI Credit cards\nNo code required",
                ),
                OfferCard(
                  title: "Flat 15% Off",
                  subtitle:
                      "Get flat 15% off up to ₹500\nUse Code: FURNITURE15",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const OfferCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 100,
        width: 250,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow.shade300,
              Colors.yellow.shade700,
              Colors.orange.shade200,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Adjust color for better readability
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black, // Adjust color for better readability
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
