import 'package:flutter/material.dart';
import 'package:food_saver/constants/app_colors.dart';
import 'package:food_saver/views/login/login.dart';
import 'package:food_saver/views/onboarding/onboarding_1.dart';
import 'package:food_saver/views/onboarding/onboarding_navigate.dart';
import 'package:food_saver/views/registration/user_type.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontFamily: 'Glyphs', fontSize: width * 0.05, color: Colors.white),
          displayMedium: TextStyle(fontFamily: 'Glyphs', fontSize: width * 0.06, color: Colors.white),
          headlineMedium: TextStyle(fontFamily: 'Glyphs', fontSize: width * 0.04, color: Colors.white),
          displaySmall: TextStyle(fontFamily: 'Glyphs', fontSize: width * 0.03, color: Colors.white),
          bodyLarge: GoogleFonts.spaceMono(fontSize: 30, fontWeight: FontWeight.w500),
          bodyMedium: GoogleFonts.spaceMono(fontSize: 24, fontWeight: FontWeight.w500),
          bodySmall: GoogleFonts.spaceMono(fontSize: 16, fontWeight: FontWeight.w500)
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingNavigate(),
    );
  }
}