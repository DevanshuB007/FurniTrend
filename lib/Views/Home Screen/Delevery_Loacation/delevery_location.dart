import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cities = [
      {"name": "Bengaluru", "icon": "assets/images/bengaluru.png"},
      {"name": "Mumbai", "icon": "assets/images/mumbai.png"},
      {"name": "Pune", "icon": "assets/images/pune.png"},
      {"name": "Delhi", "icon": "assets/images/delhi.png"},
      {"name": "Gurugram", "icon": "assets/images/pune.png"},
      {"name": "Noida", "icon": "assets/images/noida.png"},
      {"name": "Hyderabad", "icon": "assets/images/pune.png"},
      {"name": "Chennai", "icon": "assets/images/pune.png"},
      {"name": "Kolkata", "icon": "assets/images/kolkata.png"},
      {"name": "Ahmedabad", "icon": "assets/images/pune.png"},
      {"name": "Gandhinagar", "icon": "assets/images/pune.png"},
      {"name": "Jaipur", "icon": "assets/images/jaipur.png"},
      {"name": "Ghaziabad", "icon": "assets/images/pune.png"},
      {"name": "Faridabad", "icon": "assets/images/pune.png"},
      {"name": "Chandigarh", "icon": "assets/images/pune.png"},
      {"name": "Mysuru", "icon": "assets/images/pune.png"},
    ];

    final List<String> otherCities = [
      "Nashik",
      "Vijayawada",
      "Hosur",
      "Patiala",
      "Meerut",
      "Panipat",
      "Ambala",
      "Sonipat",
      "Karnal",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Select Delivery Location"),
        titleTextStyle: GoogleFonts.lora(
            fontSize: 19, color: Colors.black, fontWeight: FontWeight.w500),
        // centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      "Enter your pincode",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Currently selected pincode : 560034",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Divider(
              //   indent: 130,
              //   endIndent: 130,
              //   color: Colors.teal,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Or select your city",
                    style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cities.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Adjust for responsiveness
                  // crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  final city = cities[index];
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          city['icon']!,
                          height: 50,
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        city['name']!,
                        style: GoogleFonts.lora(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                        // style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
              Text(
                "Other Cities",
                style: GoogleFonts.lora(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: otherCities
                    .map(
                      (city) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          city,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
