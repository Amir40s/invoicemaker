import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../button_classes/text_button_class/text_button.dart';
import '../../start_screen/botttomBar_screen/bottomBar_screen.dart';

class OnBoardingSkipButton {
  Widget onBoardingSkipButton() {
    return Positioned(
        top: 15,
        right: 15,
        child: CustomTextButton().customTextButton(
            onPress: () {
              Get.offAll(() =>const BottomNavBarScreen());
            },
            text: "Skip",
            textColor: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold));
  }
}
