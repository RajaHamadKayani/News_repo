import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uploading_images_to_firebase/view/dashboard/dashboard.dart';
import 'package:uploading_images_to_firebase/views/sign_in_view/sign_in_view.dart';
import 'package:uploading_images_to_firebase/views/sign_up_view/sign_up_view.dart';

class SplashController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void navToNext() async {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_auth.currentUser != null) {
        Get.to(MyBottomNavigationBar());
      } else {
        Get.to(const SignInView());
      }
    });
  }
}
