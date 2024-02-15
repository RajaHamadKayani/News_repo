import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uploading_images_to_firebase/controllers/splash_controller/splash_controller.dart';
import 'package:uploading_images_to_firebase/services/responsive_layout/responsive_layout.dart';
import 'package:uploading_images_to_firebase/views/widgets/text_widget/text_widget.dart';



class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  SplashController splashViewController = Get.put(SplashController());
  @override
  void initState() {
    super.initState();
    splashViewController.navToNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             SizedBox(
              height: !HomeResponsive.isDesktop(context) && !HomeResponsive.isTablet(context)?250:400,
              width:!HomeResponsive.isDesktop(context) && !HomeResponsive.isTablet(context)?250:400, 
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("assets/images/news_logo.png"),
              ),
             ),
              const SizedBox(height: 100),
              Text("News App",style: TextStyle(
                color: Colors.black,fontSize: !HomeResponsive.isDesktop(context) && !HomeResponsive.isTablet(context)?18:25
              ),)
            ]
          ),
        ),
      )),
    );
  }
}
