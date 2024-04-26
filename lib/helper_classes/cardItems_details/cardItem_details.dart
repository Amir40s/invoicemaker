import 'package:flutter/material.dart';
import '../../constants/color_class.dart';
import '../helper_text/helper_text_class.dart';

class CardItemDetails{
  Widget cardItemDetails({required var icon,required String text,required double iconSize,required double fontSize,required var iconColor}){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon,color: iconColor,size: iconSize,),
        const SizedBox(width: 5,),
        HelperText().helperText(text: text, textColor: fieldTextColor, fontSize: fontSize),
      ],
    );
  }
}