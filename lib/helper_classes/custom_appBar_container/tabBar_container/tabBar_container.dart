import 'package:flutter/material.dart';
import '../../../constants/color_class.dart';
import '../../helper_text/helper_text_class.dart';

class CustomTabBarButton{
  Widget customTabBarButton({var buttonColor,required String text}){
    return Container(
      height: 60.0,
      width: 160.0,
      decoration: BoxDecoration(
        border: Border.all(color: textColor,width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(child: HelperText().helperText(text: text, fontSize: 12,fontWeight: FontWeight.w500)),
    );
  }
}