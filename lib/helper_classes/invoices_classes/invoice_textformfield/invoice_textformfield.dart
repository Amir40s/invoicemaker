import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/color_class.dart';

class InvoiceTextFormField{
  Widget invoiceTextFormField({required String hintText,required var height,required var width}){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: fieldColor),
        borderRadius: BorderRadius.circular(5.0),
    ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(color: containerTextColor,fontSize: 14.0,),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}