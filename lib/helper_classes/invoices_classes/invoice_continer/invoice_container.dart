import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../button_classes/submit_button/submit_button.dart';
import '../../../constants/color_class.dart';
import '../../helper_text/helper_text_class.dart';
import '../invoice_textformfield/invoice_textformfield.dart';


class InvoiceContainer{
  Widget invoiceContainer(){
    return Container(
      width: Get.width,
      height: 1410.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: textColor,
      ),

      child: Padding(
        padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HelperText().helperText(text: "Invoice", fontSize: 16.0,fontWeight: FontWeight.bold,textColor: fieldTextColor),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 30.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: fieldColor,
                      ),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                      color: fieldColor,
                    ),
                  child: Center(child: HelperText().helperText(text: "#", textColor: containerTextColor,fontWeight: FontWeight.w600,fontSize: 14.0,))
                ),
                Container(
                  height: 30.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: fieldColor
                    ),
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                    color: textColor,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      hintText: "23454",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            CustomSubmitButton().customSubmitButton(onPress: (){}, text: "+ Add Your Logo", textColor: containerTextColor, containerColor: fieldColor, fontSize: 12.0,fontWeight: FontWeight.w600, height: 40.0,width: 150.0, borderRadius:  BorderRadius.circular(5.0),),
            const SizedBox(height: 10.0,),
            InvoiceTextFormField().invoiceTextFormField(hintText: "Who is this invoice from? (required)", height: 50.0, width: Get.width),
            const SizedBox(height: 10.0,),
            HelperText().helperText(text: "Bill To", fontSize: 14.0,textColor: containerTextColor),
            const SizedBox(height: 10.0,),
            InvoiceTextFormField().invoiceTextFormField(hintText: "Who is this invoice to? (required)", height: 50.0, width: Get.width),
            const SizedBox(height: 10.0,),
            HelperText().helperText(text: "Ship To", fontSize: 14.0,textColor: containerTextColor),
            const SizedBox(height: 10.0,),
            InvoiceTextFormField().invoiceTextFormField(hintText: "(optional)", height: 50.0,width: Get.width),
            const SizedBox(height: 20.0,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    HelperText().helperText(text: "Date", fontSize: 14.0,textColor: containerTextColor),
                    const SizedBox(width: 10.0,),
                    InvoiceTextFormField().invoiceTextFormField(hintText: "", height: 50.0,width: 170.0),
                  ],
                ),
                const SizedBox(height: 7.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    HelperText().helperText(text: "Payment Terms", fontSize: 14.0,textColor: containerTextColor),
                    const SizedBox(width: 10.0,),
                    InvoiceTextFormField().invoiceTextFormField(hintText: "", height: 50.0,width: 170.0),
                  ],
                ),
                const SizedBox(height: 7.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    HelperText().helperText(text: "Due Date", fontSize: 14.0,textColor: containerTextColor),
                    const SizedBox(width: 10.0,),
                    InvoiceTextFormField().invoiceTextFormField(hintText: "", height: 50.0,width: 170.0),
                  ],
                ),
                const SizedBox(height: 7.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    HelperText().helperText(text: "Phone Number", fontSize: 14.0,textColor: containerTextColor),
                    const SizedBox(width: 10.0,),
                    InvoiceTextFormField().invoiceTextFormField(hintText: "", height: 50.0,width: 170.0),
                  ],
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: Get.width,
                  height: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: fieldColor)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HelperText().helperText(text: "Amount  \$0.00", fontSize: 14.0),
                        const SizedBox(height: 10.0,),
                        Row(
                          children: [
                            InvoiceTextFormField().invoiceTextFormField(hintText: "\$  0", height: 50.0,width: 100.0),
                            const SizedBox(width: 20.0,),
                            HelperText().helperText(text: "x", fontSize: 14.0,textColor: containerTextColor),
                            const SizedBox(width: 5.0,),
                            InvoiceTextFormField().invoiceTextFormField(hintText: "1", height: 50.0,width: 100.0),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        InvoiceTextFormField().invoiceTextFormField(hintText: "Description of services or product...", height: 50.0, width: Get.width),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            CustomSubmitButton().customSubmitButton(onPress: (){}, text: "+ Line Item", textColor: textColor, containerColor: appColor, fontSize: 12.0,height: 40.0,width: 100.0,fontWeight: FontWeight.w600,borderRadius: BorderRadius.circular(5.0)),
            const SizedBox(height: 15.0,),
            HelperText().helperText(text: "   Notes", fontSize: 14.0,textColor: containerTextColor),
            const SizedBox(height: 10.0,),
            InvoiceTextFormField().invoiceTextFormField(hintText: "Notes - any relevant information not already covered", height: 100.0,width: Get.width),
            const SizedBox(height: 10.0,),
            HelperText().helperText(text: "   Terms", fontSize: 14.0,textColor: containerTextColor),
            const SizedBox(height: 10.0,),
            InvoiceTextFormField().invoiceTextFormField(hintText: "Terms and conditions - late fees, payment methods, delivery schedule", height: 100.0,width: Get.width),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HelperText().helperText(text: "Subtotal", fontSize: 14.0,textColor: containerTextColor),
                const SizedBox(width: 120.0,),
                HelperText().helperText(text: "\$0.00", fontSize: 14.0,textColor: Colors.black),
                const SizedBox(width: 31.0,),
              ],
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HelperText().helperText(text: "Tax", fontSize: 14.0,textColor: containerTextColor),
                const SizedBox(width: 20.0,),
                InvoiceTextFormField().invoiceTextFormField(hintText: "\$  0", height: 50.0,width: 145.0),
                const SizedBox(width: 20.0,),
                HelperText().helperText(text: "x", fontSize: 18.0,textColor: Colors.black),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HelperText().helperText(text: "+ Discount", fontSize: 12.0,textColor: appColor,fontWeight: FontWeight.w600),
                const SizedBox(width: 20.0,),
                HelperText().helperText(text: "+ Shipping", fontSize: 12.0,textColor: appColor,fontWeight: FontWeight.w600),
                const SizedBox(width: 29.0,),
              ],
            ), const SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HelperText().helperText(text: "Total", fontSize: 14.0,textColor: containerTextColor),
                const SizedBox(width: 120.0,),
                HelperText().helperText(text: "\$0.00", fontSize: 14.0,textColor: Colors.black),
                const SizedBox(width: 31.0,),
              ],
            ),
            const SizedBox(height: 7.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HelperText().helperText(text: "Amount Paic", fontSize: 14.0,textColor: containerTextColor),
                const SizedBox(width: 17.0,),
                InvoiceTextFormField().invoiceTextFormField(hintText: "\$  0", height: 50.0,width: 145.0),
                const SizedBox(width: 30.0,),
              ],
            ),
            const SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HelperText().helperText(text: "Balance Due", fontSize: 14.0,textColor: containerTextColor),
                const SizedBox(width: 120.0,),
                HelperText().helperText(text: "\$0.00", fontSize: 14.0,textColor: Colors.black),
                const SizedBox(width: 31.0,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}