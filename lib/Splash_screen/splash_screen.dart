import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furlenco/Views/Home%20Screen/Home%20Section/home_scr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe6f6f6),
      body: SizedBox.expand(
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}
