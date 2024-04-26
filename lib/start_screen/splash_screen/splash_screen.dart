import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoicemaker/helper_classes/images_path/image_Path.dart';
import 'package:invoicemaker/helper_classes/onBoarding_screen_classes/onBoarding_page_screen.dart';
import 'package:invoicemaker/start_screen/onboarding_screen/onBoarding_screen.dart';
import 'package:invoicemaker/start_screen/splash_screen/splash_screen_image_container/splash_screen_image_container.dart';
import '../../constants/color_class.dart';
import '../../helper_classes/helper_text/helper_text_class.dart';
import '../../helper_classes/splash_services/splash_services.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  SplashServices splashScreen = SplashServices();

  void timer(){
    Timer(const Duration(seconds: 5), () {Get.off(const OnBoardingScreenOne());});
  }

  @override
  Widget build(BuildContext context) {
   timer();
    return Scaffold(
      backgroundColor: appColor,
      body: Stack(
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageContainer().imageContainer(),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: HelperText().helperText(
                        text: "INVOICE MAKER APP",
                        textColor: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  // height: MediaQuery.sizeOf(context).height *
                  width: MediaQuery.sizeOf(context).width,
                  child: Image.asset(
                    ImagesPath.SPLASHIMAGETWO,
                    fit: BoxFit.fitHeight,
                  )))
        ],
      ),
    );
  }
}

