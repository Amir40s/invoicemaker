import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoicemaker/start_screen/business_profile_screen/business_profile_screen.dart';
import '../../button_classes/text_button_class/text_button.dart';
import '../../start_screen/signIn_screen/signIn_screen.dart';

class OnBoardingSkipButton {
  Widget onBoardingSkipButton() {
    return Positioned(
        top: 15,
        right: 15,
        child: CustomTextButton().customTextButton(
            onPress: () {
              Get.to(BusinessProfileScreen());
            },
            text: "Skip",
            textColor: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold));
  }
}
