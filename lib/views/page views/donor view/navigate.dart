import 'package:flutter/material.dart';
import 'package:food_saver/constants/app_colors.dart';
import 'package:food_saver/views/page%20views/donor%20view/homepage.dart';
import 'package:food_saver/views/page%20views/donor%20view/profile.dart';

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {

  int selectedIndex = 0;

  static const List<Widget> widgets = [
    HomePage(),
    Profile()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.backgroundColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.secondaryColor,
        iconSize: 30,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      ),
      body: Center(
        child: widgets.elementAt(selectedIndex),
      ),
    );
  }
}