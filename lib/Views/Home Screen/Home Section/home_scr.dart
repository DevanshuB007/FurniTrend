import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/Banner%20Section/banner_section.dart';
import 'package:furlenco/Views/Home%20Screen/Category%20Section/category_section.dart';
import 'package:furlenco/Views/Home%20Screen/Home%20Section/dashboard_scr.dart';
import 'package:furlenco/Views/Home%20Screen/Offer%20Section/offer_section.dart';
import 'package:furlenco/Views/Home%20Screen/Product_category/produccateg.dart';
import 'package:furlenco/Views/Home%20Screen/profile_Screen/profile_scr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const DashboardScr(),
    const ProductListingPage(), 
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
      body: _screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex, 
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
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
// class HomeTab extends StatelessWidget {
//   const HomeTab({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           const BannerSection(),
//           const CategorySection(),
//           const SizedBox(height: 10),
//           const OfferSection(),
//         ],
//       ),
//     );
//   }
// }

// Category Tab Widget
// class CategoryTab extends StatelessWidget {
//   const CategoryTab({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Category Screen',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

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
