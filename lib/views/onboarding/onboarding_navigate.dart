import 'package:flutter/material.dart';
import 'package:food_saver/constants/app_colors.dart';
import 'package:food_saver/views/onboarding/onboarding_1.dart';
import 'package:food_saver/views/onboarding/onboarding_2.dart';
import 'package:food_saver/views/onboarding/onboarding_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigate extends StatefulWidget {
  const OnBoardingNavigate({super.key});

  @override
  State<OnBoardingNavigate> createState() => _OnBoardingNavigateState();
}

class _OnBoardingNavigateState extends State<OnBoardingNavigate> {

  PageController controller = PageController();

  static const List<Widget> widgets = <Widget> [
    OnBoarding1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 600,
            child: PageView(
              controller: controller,
              children: const [
                OnBoarding1(),
                OnBoarding2(),
                OnBoarding3()
              ],
            ),
          ),
          SmoothPageIndicator(controller: controller, count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.purpleAccent,
              dotColor: AppColors.secondaryColor,
              dotHeight: 20,
              dotWidth: 20
            ),
          )
        ],
      ),
    );
  }
}