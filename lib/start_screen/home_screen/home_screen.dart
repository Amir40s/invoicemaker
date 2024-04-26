import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../button_classes/floating_action_button/floating_action_button.dart';
import '../../constants/color_class.dart';
import '../../helper_classes/custom_appBar_container/home_appBar_tabBar/home_appbar_tabbar.dart';
import '../invoices_screen/invoice_screen.dart';
import '../setting_screen/setting_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHomeAppBar().customHomeAppBar(leadingIcon: Icons.home_filled, text: "Solinovation",actionIcon1: Icons.notification_important,actionIcon2: Icons.settings,leadingTab: () {  }, action1Tab: () {  }, action2Tab: () {Get.to(SettingScreen());}),
        ],
      ),
      floatingActionButton:
          SizedBox(height: 47.0,width: 47.0,
              child: CustomFloatingActionButton().customFloatingActionButton(onPress: (){Get.to(()=>const InvoiceScreen());}, icon: Icons.add, iconSize: 27,backgroundColor: appColor,iconColor: textColor)),
    );
  }
}
