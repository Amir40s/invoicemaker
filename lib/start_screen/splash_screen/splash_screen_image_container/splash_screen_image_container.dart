import 'package:flutter/material.dart';
import 'package:invoicemaker/constants/color_class.dart';
import 'package:invoicemaker/helper_classes/images_path/image_Path.dart';

class ImageContainer{
  Widget imageContainer(){
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: 160.0,
      height: 160.0,
      decoration: BoxDecoration(
        color: textColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Image.asset(ImagesPath.SPLASHIMAGEONE,)),
    );
  }
}