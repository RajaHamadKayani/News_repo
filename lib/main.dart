import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:get/get.dart";
import 'package:uploading_images_to_firebase/controllers/sign_in_controller/sign_in_controller.dart';
import 'package:uploading_images_to_firebase/controllers/sign_up_controller/sign_up_controller.dart';
import 'package:uploading_images_to_firebase/view/splash_view/splash_view.dart';
import 'package:uploading_images_to_firebase/views/sign_in_view/sign_in_view.dart';
import 'package:uploading_images_to_firebase/views/sign_up_view/sign_up_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/SignInView',
      getPages: [
        GetPage(
          name: '/SignInView',
          page: () => SignInView(),
          binding: BindingsBuilder(() {
            Get.put(LoginViewController()); // You may need to adjust this depending on your setup
          }),
        ),
        GetPage(
          name: '/SignUpView',
          page: () => SignUpView(),
          binding: BindingsBuilder(() {
            Get.put(SignUpController()); // You may need to adjust this depending on your setup
          }),
        ),
      ],
    );
  }
}