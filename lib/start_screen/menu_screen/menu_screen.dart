import 'package:flutter/material.dart';

import '../../constants/color_class.dart';
import '../../helper_classes/custom_appBar_container/custom_appBar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().customAppBar(
        icon: Icon(
          Icons.arrow_back_outlined,
          color: textColor,
        ),
        text: "Solinovation",
        actionIcon1: Icons.notification_important,
        actionIcon2: Icons.settings,
        titleColor: textColor,
        backgroundColor: appColor,
        onPress1: () {},
        onPress2: () {},
        onPress3: () {}, useLeadingIcon: false, useActionIcon1: true,useActionIcon2: true,
      ),
    );
  }
}
