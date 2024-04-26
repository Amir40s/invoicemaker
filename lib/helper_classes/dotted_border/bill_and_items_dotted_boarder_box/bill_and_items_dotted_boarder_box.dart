import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:invoicemaker/constants/color_class.dart';
import '../../helper_text/helper_text_class.dart';

class BillAndItemsDottedBox{
  Widget billAndItemsDottedBox({required String text,required double height,required double width}){
    return DottedBorder(color: appColor,
        dashPattern: const [8, 4],
        strokeWidth: 1.5,
        child:SizedBox(
          height: height,
          width: width,
          child: Center(child: HelperText().helperText(text: text, fontSize: 12.0,textColor: Colors.grey.shade400)),
        ) );
  }
}