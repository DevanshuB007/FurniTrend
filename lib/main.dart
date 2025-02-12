import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:furlenco/Onboarding%20Screen/OnboardingScreen.dart';
import 'package:furlenco/Splash_screen/splash_screen.dart';
import 'package:furlenco/Views/Home%20Screen/Home%20Section/home_scr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final bool showOnboarding = await _shouldShowOnboarding();
  runApp(MyApp(showOnboarding: showOnboarding));
}

Future<bool> _shouldShowOnboarding() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isFirstTime') ?? true; // Default: show onboarding
}

class MyApp extends StatelessWidget {
  final bool showOnboarding;
  const MyApp({super.key, required this.showOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furlenco',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: showOnboarding ? const OnboardingScreen() : const HomeScreen(),
    );
  }
}
