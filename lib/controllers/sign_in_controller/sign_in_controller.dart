import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uploading_images_to_firebase/view/dashboard/dashboard.dart';

class LoginViewController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final databaseReference = FirebaseDatabase.instance.ref();

  Future<void> loginUser(BuildContext context) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      Get.snackbar(
        "Sign In",
        "Login Successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.teal,
      );
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MyBottomNavigationBar()));

      // Fetch user data from the database after successful login
      DataSnapshot userDataSnapshot = await databaseReference
          .child("Data")
          .child(credential.user!.uid)
          .get();

      // Accessing specific fields from the user data
      String userEmail = userDataSnapshot.child("email").value.toString();
      String userName = userDataSnapshot.child("name").value.toString();
      String userPhone = userDataSnapshot.child("phone").value.toString();

      // Print or use the retrieved user data
      print('User Email: $userEmail');
      print('User Name: $userName');
      print('User Phone: $userPhone');

      // You can now use the userName variable as needed

      // Update this part to navigate to the appropriate screen
    } on FirebaseAuthException catch (e) {
  String errorMessage = "";

  if (e.code == 'user-not-found') {
    errorMessage = 'No user found for that email.';
  } else if (e.code == 'wrong-password') {
    errorMessage = 'Wrong password provided for that user.';
  } else {
    errorMessage = 'An error occurred during login. Please try again.';
  }

  print(errorMessage); // Print the error message to the console

  // Display the error message to the user using Get.snackbar
  Get.snackbar(
    "Sign In",
    errorMessage,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.teal,
  );
}
  }
}
