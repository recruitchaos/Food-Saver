import 'package:flutter/material.dart';
import 'package:food_saver/views/registration/donor_registration.dart';
import 'package:food_saver/views/registration/recipient_registration.dart';

import '../../constants/app_colors.dart';

class UserType extends StatefulWidget {
  const UserType({super.key});

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose Account Type", style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: height*0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecipientRegistration()));
                  },
                  child: Container(
                    width: width * 0.4,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Text("Recipient", style: Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white)),
                        Text("Choose this if you want to recieve info about available foods", style: Theme.of(context).textTheme.bodySmall?.apply(color: Colors.white), textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.1,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DonorRegistration()));
                  },
                  child: Container(
                    width: width * 0.4,       
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Text("Donor", style: Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),),
                        Text("Choose this if you want to donate food to the needy people out there", style: Theme.of(context).textTheme.bodySmall?.apply(color: Colors.white), textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}