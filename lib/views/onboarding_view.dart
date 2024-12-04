import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image
            Image.asset('assets/images/onbording_1.png'),
            // title
            Text(
              'Welcome to Fresh Fruits',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Grocery application',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // subtitle
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 24,
            ),

            // dots
            SmoothPageIndicator(
              controller: PageController(),
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Color(0xff12B76A),
                dotColor: Color(0xffF2F2F2),
                dotHeight: 6,
                dotWidth: 8,
                spacing: 5,

                // strokeWidth: 8,
              ),
            ),

            SizedBox(
              height: 41,
            ),

            // button
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  backgroundColor: Color(0xffFEC54B),
                  foregroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 60)),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
