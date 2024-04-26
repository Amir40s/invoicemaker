import 'package:flutter/material.dart';

class SimpleCustomTextFormField{
  Widget simpleCustomTextFormField({required String fieldName,required String labelName, var height, var width,var controller,var textInputAction,var keyboardType}){
    return SingleChildScrollView(
      child: SizedBox(
        height: height,
        width: width,
        child: TextFormField(
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            hintText: fieldName,
            label: Text(labelName),
          ),
        ),
      ),
    );
  }
}