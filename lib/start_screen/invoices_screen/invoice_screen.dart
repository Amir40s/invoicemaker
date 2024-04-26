import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../button_classes/submit_button/submit_button.dart';
import '../../button_classes/text_button_class/text_button.dart';
import '../../constants/color_class.dart';
import '../../helper_classes/custom_textformfield/custom_TextFormField.dart';
import '../../helper_classes/invoices_classes/invoice_continer/invoice_container.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,top: 20.0,right: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InvoiceContainer().invoiceContainer(),
              const SizedBox(height: 15.0,),
              Center(child: CustomTextButton().customTextButton(onPress: (){}, text: "Currency", textColor: Colors.black, fontSize: 14.0,fontWeight: FontWeight.w600)),
              const SizedBox(height: 10.0,),
              CustomTextFormField().customTextFormField(hintText: "USD(\$)",suffixIcon: Icons.keyboard_arrow_down_outlined,filledColor: textColor, height: 45.0,width: Get.width),
              const SizedBox(height: 10.0,),
              Center(child: CustomTextButton().customTextButton(onPress: (){}, text: "Save Default", textColor: appColor, fontSize: 14.0,fontWeight: FontWeight.w600)),
              const SizedBox(height: 10.0,),
              Center(child: CustomSubmitButton().customSubmitButton(onPress: (){}, text: "Preview invoice", textColor: textColor, containerColor: appColor, fontSize: 12.0,height: 40.0,width: 150.0,fontWeight: FontWeight.w600,borderRadius: BorderRadius.circular(5.0))),
              const SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }
}
