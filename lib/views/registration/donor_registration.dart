import 'package:flutter/material.dart';
import 'package:food_saver/constants/app_colors.dart';

import '../../custom widgets/custom_button.dart';
import '../../custom widgets/custom_textfield.dart';

class DonorRegistration extends StatefulWidget {
  const DonorRegistration({super.key});

  @override
  State<DonorRegistration> createState() => _DonorRegistrationState();
}

class _DonorRegistrationState extends State<DonorRegistration> {

 TextEditingController nameController = TextEditingController();
 TextEditingController emailController = TextEditingController();
 TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Text("Enter your details", style: Theme.of(context).textTheme.displayLarge),
              SizedBox(height: 50,),
              CustomTextfield(label: 'Name', isObscure: false, controller: nameController,),
              SizedBox(height: 16,),
              CustomTextfield(label: 'Organization Name', isObscure: false, controller: nameController,),
              SizedBox(height: 16,),
              CustomTextfield(label: 'Email', isObscure: false, controller: emailController,),
              SizedBox(height: 16,),
              CustomTextfield(label: 'Password', isObscure: true, controller: passwordController,),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DonorRegistration()));
                },
                child: CustomButton(text: 'Next',)),
            ],
          ),
        ),
      ),
    );
  }
}