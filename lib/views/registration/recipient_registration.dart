import 'package:flutter/material.dart';
import 'package:food_saver/services/auth.dart';
import 'package:food_saver/views/login/login.dart';
import '../../constants/app_colors.dart';
import '../../custom widgets/custom_button.dart';
import '../../custom widgets/custom_textfield.dart';

class RecipientRegistration extends StatefulWidget {
  const RecipientRegistration({super.key});

  @override
  State<RecipientRegistration> createState() => _RecipientRegistrationState();
}

class _RecipientRegistrationState extends State<RecipientRegistration> {

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
              CustomTextfield(label: 'Email', isObscure: false, controller: emailController,),
              SizedBox(height: 16,),
              CustomTextfield(label: 'Password', isObscure: true, controller: passwordController,),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: () {
                  createUser(emailController.text, passwordController.text, nameController.text, context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                },
                child: CustomButton(text: 'Next',)),
            ],
          ),
        ),
      ),
    );
  }
}