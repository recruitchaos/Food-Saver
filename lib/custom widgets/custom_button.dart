import 'package:flutter/material.dart';
import 'package:food_saver/constants/app_colors.dart';

class CustomButton extends StatefulWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.text, textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall?.apply(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}