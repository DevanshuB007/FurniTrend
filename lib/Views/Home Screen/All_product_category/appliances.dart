import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/Search_Section/search_sec.dart';

class Appliances extends StatelessWidget {
  const Appliances({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Column(
          children: [
            SearchSec(),
          ],
        ),
      ),
      body: Column(
        children: [
          Text("Leaving Room"),
        ],
      ),
    );
  }
}
