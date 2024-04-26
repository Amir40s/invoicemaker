import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/color_class.dart';

class CustomTextFormField {
  Widget customTextFormField({
    required String hintText,
    var controller,
    var icon,
    var suffixIcon,
    var filledColor,
    required var height,
    required var width,
    var validator,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          fillColor: filledColor,
          filled: true,
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(color: fieldTextColor),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon: Icon(
            icon,
            color: fieldTextColor,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: fieldTextColor,
          ),
        ),
      ),
    );
  }
}
