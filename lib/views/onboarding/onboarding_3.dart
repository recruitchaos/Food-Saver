import 'package:flutter/material.dart';
import 'package:food_saver/views/login/login.dart';
import 'package:lottie/lottie.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({super.key});

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.1,),
            GestureDetector(
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView())); }, 
              child: LottieBuilder.asset('assets/animation/onboarding_3.json', repeat: false,))
          ],
        ),
      ),
    );
  }
}