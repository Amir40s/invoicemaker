import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShareButton {
  Widget shareButton(
      {double? width,
      double? height,
      required VoidCallback onPress,
      var border,var boxShadow,var borderRadius,var icon,
      required String text,required var buttonColor,var iconColor,
      required var textColor,required double fontSize,var fontWeight, bool? isIcon}) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          color: buttonColor,
          border: border,
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isIcon == true
                  ? Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(icon,color: iconColor,size: 18,),
                    )
                  : const SizedBox(),
              Center(
                  child: Text(
                text,
                style: GoogleFonts.poppins(color: textColor,fontSize: fontSize,fontWeight: fontWeight),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
