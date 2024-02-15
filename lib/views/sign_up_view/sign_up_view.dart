import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uploading_images_to_firebase/utils/app_style/app_style.dart';
import 'package:uploading_images_to_firebase/views/sign_in_view/sign_in_view.dart';
import 'package:uploading_images_to_firebase/views/widgets/container_widget/container_widget.dart';
import 'package:uploading_images_to_firebase/views/widgets/text_field_widget/text_field_widget.dart';
import 'package:uploading_images_to_firebase/views/widgets/text_widget/text_widget.dart';

import '../../controllers/sign_up_controller/sign_up_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  SignUpController signUpController = Get.find();

  @override
  void initState() {
    super.initState();
  }

  bool isValid(BuildContext context) {
    if (signUpController.emailController.text.isEmpty ||
        signUpController.passwordController.text.isEmpty ||
        signUpController.confirmPasswordController.text.isEmpty ||
        signUpController.nameController.text.isEmpty ||
        signUpController.phoneController.text.isEmpty) {
      Get.snackbar("Register User", "All fields are required",
          colorText: Colors.white,
          backgroundColor: Colors.teal,
          snackPosition: SnackPosition.BOTTOM);
      return false;
    } else if (signUpController.passwordController.text !=
        signUpController.confirmPasswordController.text) {
      Get.snackbar("Register User", "Password and Confirm Password should be the same",
          colorText: Colors.white,
          backgroundColor: Colors.teal,
          snackPosition: SnackPosition.BOTTOM);
      return false;
    } else {
      Get.snackbar("Register User", "User registered successfully",
          colorText: Colors.white,
          backgroundColor: Colors.teal,
          snackPosition: SnackPosition.BOTTOM);
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: TextWidget(
            text: "News App",
            textStyle: AppStyles.headlineBoldWhite,
          ),
        ),
        backgroundColor: AppStyles.whiteColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "SignUp",
                textStyle: AppStyles.headlineMediumBlack,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                controller: signUpController.emailController,
                hintText: "Enter email",
                height: 50,
                width: double.infinity,
                borderRadius: 25,
                borderWidth: 2,
                color: 0xff000000,
                onChanged: (String category) {},
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                controller: signUpController.passwordController,
                hintText: "Enter password",
                height: 50,
                width: double.infinity,
                borderRadius: 25,
                borderWidth: 2,
                color: 0xff000000,
                onChanged: (String category) {},
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                controller: signUpController.confirmPasswordController,
                hintText: "Confirm Password",
                height: 50,
                width: double.infinity,
                borderRadius: 25,
                borderWidth: 2,
                color: 0xff000000,
                onChanged: (String category) {},
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                controller: signUpController.nameController,
                hintText: "Enter your name",
                height: 50,
                width: double.infinity,
                borderRadius: 25,
                borderWidth: 2,
                color: 0xff000000,
                onChanged: (String category) {},
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                controller: signUpController.phoneController,
                hintText: "Enter your phone",
                height: 50,
                width: double.infinity,
                borderRadius: 25,
                borderWidth: 2,
                color: 0xff000000,
                onChanged: (String category) {},
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (isValid(context)) signUpController.registerUser(context);
                      },
                      child: ContainerWidget(
                        height: 50,
                        width: double.infinity,
                        color: 0xff00bfaf,
                        borderRadius: 25,
                        widget: Center(
                          child: TextWidget(
                            text: "Sign Up",
                            textStyle: AppStyles.headlineMediumBlack,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/SignInView');
                      },
                      child: TextWidget(
                        text: "Already have an account? Sign In",
                      ),
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

  @override
  void dispose() {
    super.dispose();
  }
}
