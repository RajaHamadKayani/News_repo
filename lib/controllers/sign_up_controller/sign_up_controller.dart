import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:uploading_images_to_firebase/views/sign_in_view/sign_in_view.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final DatabaseReference _database = FirebaseDatabase.instance.ref();

  void clearTextFields() {
    emailController.clear();
    nameController.clear();
    phoneController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  Future<void> registerUser(BuildContext context) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      await _database.child("Data").child(credential.user!.uid).set({
        "name": nameController.text,
        "confirmPassword": confirmPasswordController.text,
        "phone": phoneController.text,
        "email": emailController.text,
        "password": passwordController.text
      });
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignInView()));
      clearTextFields();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.snackbar("Sign Up", "The account already exists for that email.",
            snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.teal);
      }
    } catch (e) {
      print(e);
    }
  }
}
