import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LottieBuilder.asset('assets/animation/onboarding_1.json'),
            Text("Ever wondered what happens to tons of perfectly good food? It's just goes to waste!", style: Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white), textAlign: TextAlign.center,)
            
          ],
        ),
      ),
    );
  }
}