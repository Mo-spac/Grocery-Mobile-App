import 'package:flutter/material.dart';
import 'package:grocery_mobile_app/component/custom_text_button.dart';
import 'package:grocery_mobile_app/models/onboarding_model.dart';
import 'package:grocery_mobile_app/views/auth_view/log_in_view.dart';
import 'package:grocery_mobile_app/views/auth_view/sign_up_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({
    super.key,
  });
  PageController pageController = PageController();
  // final OnboardingModel onboardingModelc;

  List<OnboardingModel> onboarding = [
    OnboardingModel(
      image: 'assets/images/onbording_1.png',
      title_1: 'Welcome to Fresh Fruits',
      title_2: 'Grocery application',
      subtitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
    ),
    OnboardingModel(
      image: 'assets/images/onbording_2.png',
      title_1: 'We provide best quality Fruits to your family',
      title_2: '',
      subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
    ),
    OnboardingModel(
      image: 'assets/images/onbording_3.png',
      title_1: 'Fast and responsibily delivery by our courir ',
      title_2: '',
      subtitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // OnboardingModel onboardingModel;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: PageView.builder(
            controller: pageController,
            itemCount: onboarding.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  index != 0
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {
                              pageController.previousPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Color(0xffFEC54B),
                            ),
                          ),
                        )
                      : SizedBox(
                          height: 80,
                        ),
                  // image
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ClipRRect(
                      child: Image.asset(
                        onboarding[index].image,
                        fit: BoxFit.cover,
                        height: 180,
                        width: 303,
                      ),
                    ),
                  ),
                  // title_1
                  Text(
                    onboarding[index].title_1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  // titile_2
                  index == 0
                      ? Expanded(
                          child: Text(
                            onboarding[index].title_2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  // subtitle
                  Text(
                    onboarding[index].subtitle,
                    textAlign: TextAlign.center,
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
                    controller: pageController,
                    count: onboarding.length,
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
                  index == onboarding.length - 1
                      ? Expanded(
                          child: CustomTextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpView(),
                                ),
                              );
                            },
                            text: 'Create an account',
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                          ),
                        )
                      : CustomTextButton(
                          onPressed: () {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.fastLinearToSlowEaseIn,
                            );
                          },
                          text: 'Next',
                          foregroundColor: Colors.black,
                          backgroundColor: Color(0xffFEC54B),
                        ),
                  index == onboarding.length - 1
                      ? Expanded(
                          child: CustomTextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LogInView(),
                                ),
                              );
                            },
                            text: 'LOGIN',
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                          ),
                        )
                      : SizedBox(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
