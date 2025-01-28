import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/Banner%20Section/banner_section.dart';
import 'package:furlenco/Views/Home%20Screen/Category%20Section/category_section.dart';
import 'package:furlenco/Views/Home%20Screen/Deals%20of%20the%20day/deals_day.dart';
import 'package:furlenco/Views/Home%20Screen/Home%20Section/home_scr.dart';
import 'package:furlenco/Views/Home%20Screen/New_Arival_section/newarrivals.dart';
import 'package:furlenco/Views/Home%20Screen/Offer%20Section/offer_section.dart';
import 'package:furlenco/Views/Home%20Screen/Product_category/produccateg.dart';
import 'package:furlenco/Views/Home%20Screen/profile_Screen/profile_scr.dart';

class DashboardScr extends StatefulWidget {
  const DashboardScr({super.key});

  @override
  State<DashboardScr> createState() => _DashboardScrState();
}

class _DashboardScrState extends State<DashboardScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/logo.png',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            // const Newarrivals(),
            BannerSection(),
            CategorySection(),
            SizedBox(height: 30),
            OfferSection(),
            Newarrivals(),
            DealsDay(),

            // Newarrivals(),
          ],
        ),
      ),
    );
  }
}
