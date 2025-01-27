import 'package:flutter/material.dart';
import 'package:furlenco/Onboarding%20Screen/OnboardingScreen.dart';
import 'package:furlenco/Splash_screen/splash_screen.dart';
import 'package:furlenco/Views/Home%20Screen/Delevery_Loacation/delevery_location.dart';
import 'package:furlenco/Views/Home%20Screen/profile_Screen/profile_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: OnboardingScreen(),
      // home: ProfileScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
