import 'package:flutter/material.dart';
import 'package:slicing_skuypay_app/view/onboarding_screen/onboarding_screen.dart';
import 'package:slicing_skuypay_app/view/splash_screen/splash_screen.dart';

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
      title: 'Skuypay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SplashScreen(),
      home: const OnboardingScreen(),
    );
  }
}
