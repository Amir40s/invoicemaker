import 'package:flutter/material.dart';
import 'package:invoicemaker/helper_classes/images_path/image_Path.dart';

class ImageContainer{
  Widget imageContainer(){
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: 170.0,
        height: 170.0,
        child: Center(child: Image.asset(ImagesPath.SPLASHIMAGE,)),
      ),
    );
  }
}