import 'package:flutter/material.dart';
import 'package:grocery_mobile_app/views/splash_view.dart';

void main() {
  runApp(const GroceryMobileApp());
}

class GroceryMobileApp extends StatelessWidget {
  const GroceryMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
