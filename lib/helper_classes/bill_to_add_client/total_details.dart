import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../constants/color_class.dart';
import '../../providers/add_item_provider/add_item_provider.dart';
import '../helper_text/helper_text_class.dart';

class TotalDetails {
  Widget totalDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              HelperText().helperText(
                  text: "Subtotal",
                  fontSize: 13,
                  textColor: Colors.black,
                  fontWeight: FontWeight.w600),
              const SizedBox(
                width: 67.0,
              ),
              Consumer<AddItemProvider>(
                  builder: (context, addItemProvider, child) {
                return HelperText().helperText(
                    text: addItemProvider.calculateTotal().toString(),
                    fontSize: 13.0,
                    textColor: Colors.black,
                    fontWeight: FontWeight.w600);
              }),
            ],
          ),
          SizedBox(
              width: Get.width * .48,
              child: Divider(thickness: .2,color: appColor,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              HelperText().helperText(
                  text: "Total",
                  fontSize: 13,
                  textColor: Colors.black,
                  fontWeight: FontWeight.w600),
              const SizedBox(
                width: 70.0,
              ),
              Consumer<AddItemProvider>(
                  builder: (context, addItemProvider, child) {
                return HelperText().helperText(
                    text: addItemProvider.calculateTotal().toString(),
                    fontSize: 13.0,
                    textColor: Colors.black,
                    fontWeight: FontWeight.w600);
              }),
            ],
          ),
          SizedBox(
              width: Get.width * .41,
              child: Divider(thickness: .2,color: appColor,)),
        ],
      ),
    );
  }
}