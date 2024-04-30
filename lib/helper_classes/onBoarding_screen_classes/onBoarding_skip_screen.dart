import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoicemaker/start_screen/invoices_screen/edit_invoice/edit_invoice.dart';
import '../../button_classes/text_button_class/text_button.dart';

class OnBoardingSkipButton {
  Widget onBoardingSkipButton() {
    return Positioned(
        top: 15,
        right: 15,
        child: CustomTextButton().customTextButton(
            onPress: () {
              Get.offAll(() => EditInvoice(businessname: "", businessemail: ""));
            },
            text: "Skip",
            textColor: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold));
  }
}
