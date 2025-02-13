import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/Delevery_Loacation/delevery_location.dart';
import 'package:furlenco/Views/Home%20Screen/Search_Bar/search_bar.dart';
import 'package:furlenco/Views/Home%20Screen/cart_Section/cart.dart';
import 'package:furlenco/Views/Home%20Screen/wishlist/wishlist.dart';

class SearchSec extends StatelessWidget {
  const SearchSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            // height: 70,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (cntext) => DeliveryLocationScreen(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DeliveryLocationScreen()));
                        },
                        icon: Icon(
                          Icons.pin_drop_rounded,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      // SizedBox(width: 8),
                      Text(
                        "Delivery to\n 520001",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
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
                      InkWell(
                        child: Icon(Icons.favorite_border, color: Colors.grey),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WishlistScreen()));
                        },
                      ),
                      SizedBox(width: 16),
                      InkWell(
                        child: Icon(Icons.shopping_cart, color: Colors.grey),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen(
                                        title: '',
                                      )));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
