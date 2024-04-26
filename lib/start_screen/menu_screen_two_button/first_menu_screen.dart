import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoicemaker/start_screen/business_profile_screen/business_profile_screen.dart';

import '../../button_classes/share_button/share_button.dart';
import '../../constants/color_class.dart';
import '../../helper_classes/custom_appBar_container/custom_appBar.dart';

class FirstMenuScreen extends StatelessWidget {
  const FirstMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar().customAppBar(
          titleColor: textColor,
          backgroundColor: appColor,
          text: "Menu",
          leadingIconColor: textColor,
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
          onPress1: () {Get.back();},
          onPress2: () {},
          onPress3: () {}, useLeadingIcon: false, useActionIcon1: false,useActionIcon2: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: ShareButton().shareButton(onPress: (){}, text: "Make Invoice", buttonColor: appColor, textColor: textColor, fontSize: 14.0,borderRadius: BorderRadius.circular(15.0),height: 50.0,width: 150.0,fontWeight: FontWeight.bold),),
            Center(child: ShareButton().shareButton(onPress: (){Get.to(() => BusinessProfileScreen());}, text: "Make Business Profile", buttonColor: appColor, textColor: textColor, fontSize: 14.0,borderRadius: BorderRadius.circular(15.0),height: 50.0,width: 180.0,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
