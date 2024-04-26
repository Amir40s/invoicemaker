import 'package:flutter/material.dart';
import '../helper_text/helper_text_class.dart';

class LabelTextFormField{
  Widget labelTextFormField({var onChanged,required String labelText,required String hintText,var keyboardType,var maxLength,var initialValue,var textInputAction,var controller}){
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction,
      maxLength: maxLength,
      keyboardType: keyboardType,
      onChanged: onChanged,
      initialValue: initialValue,
      decoration: InputDecoration(
        label: HelperText().helperText(text: labelText, textColor: Colors.grey.shade500, fontSize: 14),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500),

          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500),

          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
      ),
    );
  }
}