import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSubmitButton {
  Widget customSubmitButton({
    required VoidCallback onPress,
    required String text,
    required var textColor,
    required var containerColor,
    required double fontSize,
    var fontWeight,
    var borderRadius,
    var height,
    var width,
    var border,
  }) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: borderRadius,
          border: border),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                  child: Text(
                text,
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
              )),
            ],
          )),
    );
  }
}
