import 'package:flutter/material.dart';
import 'package:grocery_mobile_app/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  navigate() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingView(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEC54B),
      body: Center(
        child: Image.asset(
          'assets/images/splash.png',
          width: 225,
          height: 275,
        ),
      ),
    );
  }
}
