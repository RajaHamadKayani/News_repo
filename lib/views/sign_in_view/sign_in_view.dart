import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:uploading_images_to_firebase/controllers/sign_in_controller/sign_in_controller.dart';
import 'package:uploading_images_to_firebase/utils/app_style/app_style.dart';
import 'package:uploading_images_to_firebase/views/sign_up_view/sign_up_view.dart';
import 'package:uploading_images_to_firebase/views/widgets/container_widget/container_widget.dart';
import 'package:uploading_images_to_firebase/views/widgets/text_field_widget/text_field_widget.dart';
import 'package:uploading_images_to_firebase/views/widgets/text_widget/text_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  LoginViewController loginViewController = Get.put(LoginViewController());

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  bool isValid(BuildContext context) {
    if (loginViewController.emailController.text.isEmpty ||
        loginViewController.passwordController.text.isEmpty) {
      Get.snackbar("Login User", "Email and Password are required",
          colorText: Colors.white,
          backgroundColor: Colors.teal,
          snackPosition: SnackPosition.BOTTOM);
      return false;
    }
    return true;
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
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Lottie.asset(
                    "assets/json/login_logo_1.json",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.contain,
                    controller: animationController,
                    repeat: true,
                    onLoaded: (composite) {
                      animationController.duration = composite.duration;
                      animationController.repeat();
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextWidget(
                  text: "Sign In",
                  textStyle: AppStyles.headlineMediumBlack,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldWidget(
                  controller: loginViewController.emailController,
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
                  controller: loginViewController.passwordController,
                  hintText: "Enter password",
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
                          if (isValid(context)) {
                            loginViewController.loginUser(context);
                          }
                        },
                        child: ContainerWidget(
                          height: 50,
                          width: double.infinity,
                          color: 0xff00bfaf,
                          borderRadius: 25,
                          widget: Center(
                            child: TextWidget(
                              text: "Sign In",
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
                          Get.toNamed('/SignUpView');
                        },
                        child: TextWidget(
                          text: "Not Registered yet? Sign Up",
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
