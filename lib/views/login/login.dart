import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_saver/constants/app_colors.dart';
import 'package:food_saver/custom%20widgets/custom_button.dart';
import 'package:food_saver/custom%20widgets/custom_textfield.dart';
import 'package:food_saver/services/auth.dart';
import 'package:food_saver/views/registration/user_type.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text("Food Saver", style: Theme.of(context).textTheme.displaySmall,),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login", style: Theme.of(context).textTheme.bodyLarge?.apply(color: Colors.white),),
              SizedBox(height: height * 0.04,),
              CustomTextfield(label: 'Email', isObscure: false, controller: emailController),
              SizedBox(height: height * 0.02,),
              CustomTextfield(label: 'Password', isObscure: true, controller: passwordController),
              SizedBox(height: height * 0.04,),
              GestureDetector(
                onTap: () {
                  loginUser(emailController.text, passwordController.text, context);
                },
                child: CustomButton(text: 'Next')),
              SizedBox(height: height * 0.06,),
              RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: 'New to Food Saver? ',
                style: Theme.of(context).textTheme.bodySmall?.apply(color: Colors.white)
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () { Navigator.push(context, MaterialPageRoute(builder: (context) => UserType())); },
                    text: 'Register!',
                style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.primaryColor)
                  )
                ],
              ),
              
              )
            ],
          ),
        ),
      ),
    );
  }
}