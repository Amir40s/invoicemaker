import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar {
  AppBar customAppBar({
    required VoidCallback onPress1,var icon,required var titleColor, required var backgroundColor,
    required String text, var leadingIconColor,required bool useLeadingIcon, }) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: useLeadingIcon
          ? IconButton(
              onPressed: onPress1,
              icon: Icon(Icons.arrow_back_outlined, color: leadingIconColor),
            )
          : null,
      automaticallyImplyLeading: false,
      title: Text(text,style: GoogleFonts.poppins(color: titleColor,fontSize: 17.0,),
      ),
    );
  }
}
