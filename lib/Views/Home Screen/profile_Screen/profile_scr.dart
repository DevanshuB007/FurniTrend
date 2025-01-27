import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "My Profile",
      //     style: GoogleFonts.lora(
      //       color: Colors.black,
      //       fontSize: 18,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Guest!",
                            style: GoogleFonts.lora(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Login to get started",
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 180,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                side: BorderSide(
                                    color: Colors.teal,
                                    width: 2), // Outline color and thickness
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                              ),
                              child: Text(
                                "LOGIN",
                                style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  color: Colors
                                      .teal, // Text color matching the outline
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OptionTile(
                icon: Icons.contact_page_outlined,
                title: "Contact Us",
                onTap: () {},
              ),
              const SizedBox(height: 10),
              OptionTile(
                icon: Icons.help_outline,
                title: "Help Centre",
                onTap: () {},
              ),
              const SizedBox(height: 30),
              Text(
                "App version 11.17.0 (841)",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Copyright © 2024 House of Kieraya Limited (formerly known as Kieraya Furnishing Solutions Private Limited)",
                style: GoogleFonts.dmSans(
                  fontSize: 10,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Privacy Policy",
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms and Conditions",
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const OptionTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: Colors.teal),
      title: Text(
        title,
        style: GoogleFonts.dmSans(fontSize: 14),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
    );
  }
}
