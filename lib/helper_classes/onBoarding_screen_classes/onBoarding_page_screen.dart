import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoicemaker/button_classes/share_button/share_button.dart';
import 'package:invoicemaker/constants/color_class.dart';
import '../../start_screen/botttomBar_screen/bottomBar_screen.dart';
import '../helper_text/helper_text_class.dart';

class OnBoardingPage extends StatelessWidget {
OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.isButton,
  });

  final String image, title, subtitle;
  bool isButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,width: double.infinity,height: 240.0,),
          const SizedBox(height: 50.0,),
          Center(
            child: HelperText().helperText(
              text: title,
              textColor: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15.0,),
          HelperText().helperText(
            text: subtitle,
            textColor: Colors.black,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 18.0,),
          SizedBox(
            child: isButton
                ? ShareButton().shareButton(
                    onPress: () {Get.offAll(() => const BottomNavBarScreen());},
                    text: "Get Started ",
                    buttonColor: appColor,
                    textColor: textColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
            borderRadius: BorderRadius.circular(15.0),height: 50.0,)
                : null,
          ),
        ],
      ),
    );
  }
}
