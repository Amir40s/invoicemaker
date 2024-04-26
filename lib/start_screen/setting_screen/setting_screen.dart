import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/color_class.dart';
import '../../helper_classes/custom_appBar_container/custom_appBar.dart';
import '../../helper_classes/custom_listTile_setting/custom_listTile_setting.dart';
import '../signIn_screen/signIn_screen.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar().customAppBar(icon: Icon(Icons.arrow_back_outlined,color: textColor,), text: "Solinovation",actionIcon1: Icons.search_outlined, titleColor: textColor, backgroundColor: appColor,actionIcon1Color: textColor,actionIcon2: Icons.logout_outlined,actionIcon2Color: textColor, onPress1: () {  }, onPress2: () {  }, onPress3: () {auth.signOut().then((value) => {Get.to(SignInScreen())});}, useLeadingIcon: false, useActionIcon1: false,useActionIcon2: true),
      body: SingleChildScrollView(
        child: Column(children: [
          CustomListTile().customListTile(leadingIcon: Icons.language_outlined, title: "Language"),
          CustomListTile().customListTile(leadingIcon: Icons.currency_exchange, title: "Currency"),
          CustomListTile().customListTile(leadingIcon: Icons.money_sharp, title: "Taxes"),
          CustomListTile().customListTile(leadingIcon: Icons.notification_important, title: "Payment Method"),
          CustomListTile().customListTile(leadingIcon: Icons.menu_open_outlined, title: "Item"),
        ],),
      ),
    );
  }
}
