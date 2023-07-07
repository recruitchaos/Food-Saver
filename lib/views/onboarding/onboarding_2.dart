import 'package:flutter/material.dart';
import 'package:food_saver/custom%20widgets/custom_button.dart';
import 'package:lottie/lottie.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.08,),
            LottieBuilder.asset('assets/animation/onboarding_2.json'),
            Text("We at Food Saver, solves this problem by connecting food donors like restaurant and groceries to the needy!", style: Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white), textAlign: TextAlign.center,),
            
          ],
        ),
      ),
    );
  }
}