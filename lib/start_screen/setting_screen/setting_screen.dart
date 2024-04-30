import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoicemaker/constants/color_class.dart';
import 'package:invoicemaker/helper_classes/custom_appBar_container/custom_appBar.dart';
import 'package:invoicemaker/helper_classes/helper_text/helper_text_class.dart';
import 'package:invoicemaker/helper_classes/privacy_policy_class/privacy_policy_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textColor,
      appBar: CustomAppBar().customAppBar(onPress1: (){}, titleColor: textColor, backgroundColor: appColor, text: "Setting", useLeadingIcon: false,leadingIconColor: textColor,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
        child: GestureDetector(
          onTap: (){Get.to(PrivacyAndPolicy().privacyAndPolicy());},
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              tileColor: appColor,
              leading: Icon(Icons.privacy_tip_outlined,color: textColor,size: 20.0,),
              title: HelperText().helperText(text: "Privacy Policy", fontSize: 14.0,textColor: textColor,fontWeight: FontWeight.bold),
              trailing: IconButton(onPressed: (){Get.to(PrivacyAndPolicy().privacyAndPolicy());}, icon: Icon(Icons.arrow_forward_ios_outlined,color: textColor,size: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
