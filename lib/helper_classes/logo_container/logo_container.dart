import 'package:flutter/material.dart';
import '../../constants/color_class.dart';

class LogoContainer{
  Widget logoContainer(){
    return Container(
      height: 40.0,
      width: 45.0,
      decoration: BoxDecoration(
        color: textColor,
        border: Border.all(color: appColor,width: 2.0),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Text("LOGO",style: TextStyle(color: appColor,fontSize: 10.0),)),
    );
  }
}