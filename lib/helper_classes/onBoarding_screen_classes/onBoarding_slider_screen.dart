import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/color_class.dart';
import 'onBoarding_controller.dart';

class OnBoardingSlider extends StatelessWidget {
  const OnBoardingSlider({Key? key});

  @override
  Widget build(BuildContext context) {
    final pageController = OnBoardingController.instance;
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: SmoothPageIndicator(
        controller: pageController.pageController,
        onDotClicked: pageController.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: appColor,
          dotHeight: 8.0,
          dotWidth: 8.0,
          dotColor: sliderUnActiveColor,
        ),
      ),
    );
  }
}
