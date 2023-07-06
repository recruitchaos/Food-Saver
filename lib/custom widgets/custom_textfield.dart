import 'package:flutter/material.dart';
import 'package:food_saver/constants/app_colors.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController controller;
  final bool isObscure;
  final String label;
  const CustomTextfield({super.key, required this.label, required this.isObscure, required this.controller});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodySmall?.apply(color: Colors.white),
      obscureText: widget.isObscure,
      controller: widget.controller,
      decoration: InputDecoration(
        label: Text(widget.label),
        labelStyle: Theme.of(context).textTheme.bodySmall?.apply(color: Colors.white),
        fillColor: Colors.grey.shade700,
        contentPadding: const EdgeInsets.all(20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2)
        )
      ),
    );
  }
}