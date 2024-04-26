import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar {
  AppBar customAppBar({
    required VoidCallback onPress1,
    required VoidCallback onPress2,
    required VoidCallback onPress3,
    var icon,
    required var titleColor,
    required var backgroundColor,
    required String text,
    var actionIcon1,
    var actionIcon2,
    var actionIcon1Color,
    var actionIcon2Color,
    var leadingIconColor,
    required bool useLeadingIcon,
    required bool useActionIcon1,
    required bool useActionIcon2,
  }) {
    return AppBar(
      elevation: 3,
      shadowColor: Colors.grey.shade200,
      backgroundColor: backgroundColor,
      leading: useLeadingIcon
          ? IconButton(
              onPressed: onPress1,
              icon: Icon(Icons.arrow_back_outlined, color: leadingIconColor),
            )
          : null,
      automaticallyImplyLeading: false,
      title: Text(
        text,
        style: GoogleFonts.poppins(
          color: titleColor,
          fontSize: 17.0,
        ),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Row(
              children: [
                SizedBox(child: useActionIcon1
                    ? IconButton(
                  onPressed: onPress2,
                  icon: Icon(
                    actionIcon1,
                    color: actionIcon1Color,
                    size: 27.0,
                  ),)
                    : null,),
                SizedBox(child: useActionIcon2
                    ? IconButton(
                  onPressed: onPress3,
                  icon: Icon(
                    actionIcon2,
                    color: actionIcon2Color,
                    size: 27.0,
                  ),)
                    : null,)

              ],
            )),
      ],
    );
  }
}
