import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class HelperText{
  Widget helperText({required String text,var textColor,var fontWeight,required double fontSize,var textAlign}){
    return Text(text,textAlign: textAlign,
      style: GoogleFonts.poppins(color: textColor,fontWeight: fontWeight,fontSize: fontSize),);
  }
}
