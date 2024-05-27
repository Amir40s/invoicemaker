import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../helper_classes/images_path/image_Path.dart';
import '../../helper_classes/onBoarding_screen_classes/onBoarding_controller.dart';
import '../../helper_classes/onBoarding_screen_classes/onBoarding_page_screen.dart';
import '../../helper_classes/onBoarding_screen_classes/onBoarding_skip_screen.dart';
import '../../helper_classes/onBoarding_screen_classes/onBoarding_slider_screen.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key,});

  @override
  Widget build(BuildContext context) {
    const int totalPages = 3;
    final pageController = Get.put(OnBoardingController(totalPages));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: pageController.pageController,
              onPageChanged: pageController.updatePageIndicator,
              children: [
                OnBoardingPage(
                  image: ImagesPath.ONBOARDINGIMAGEONE,
                  title: 'Manage Your Invoice \nOn the Go!',
                  subtitle: '', isButton: false,
                ),
                OnBoardingPage(
                  image: ImagesPath.ONBOARDINGIMAGETWO,
                  title: 'Fast and Easy Receipt \nGenerator',
                  subtitle:
                  'Reduce time and stress,Create and unlimited \nnumber of invoices, With Easy invoices Maker.', isButton: false,
                ),
                OnBoardingPage(
                  image: ImagesPath.ONBOARDINGIMAGETHREE,
                  title: 'Complete Invoicing \nSolution',
                  subtitle:
                  'Send your invoices to your Clients, instantly track \nyour Payments or check your client detail history.',
                  isButton: true,
                ),
              ],
            ),
            OnBoardingSkipButton().onBoardingSkipButton(),
            const Align(
                alignment: Alignment.bottomCenter,
                child: OnBoardingSlider()),
          ],
        ),
      ),
    );
  }
}
