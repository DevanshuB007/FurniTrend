import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/Banner%20Section/banner_section.dart';
import 'package:furlenco/Views/Home%20Screen/Category%20Section/category_section.dart';
import 'package:furlenco/Views/Home%20Screen/Offer%20Section/offer_section.dart';
import 'package:furlenco/Views/Home%20Screen/profile_Screen/profile_scr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of widgets to display based on the selected tab
  final List<Widget> _screens = [
    const HomeTab(), // Home Screen
    const CategoryTab(), // Category Screen
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        // title: Image.asset('assets/images/logo.webp', height: 20),
        centerTitle: true,
      ),
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex, // Track the selected index
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped, // Handle tab selection
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Home Tab Widget
class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BannerSection(),
          const CategorySection(),
          const SizedBox(height: 10),
          const OfferSection(),
        ],
      ),
    );
  }
}

// Category Tab Widget
class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Category Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Profile Tab Widget
// class ProfileTab extends StatelessWidget {
//   const ProfileTab({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Profile Screen',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
