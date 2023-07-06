import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';

Client client = Client().setEndpoint('https://cloud.appwrite.io/v1').setProject('FoodSaver').setSelfSigned(status: true);

Account account = Account(client);

// CREATE A USER
Future createUser(String email, String password, String name, BuildContext context) async {
  try {
    final user = await account.create(userId: ID.unique(), email: email, password: password, name: name);
    print("User created");
  }
  catch(e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

// LOGIN USER
Future loginUser(String email, String password, BuildContext context) async {
  try {
    final user = await account.createEmailSession(email: email, password: password);
    print("Logged In");
  }
  catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future logoutUser() async {
  account.deleteSession(sessionId: 'current');
}