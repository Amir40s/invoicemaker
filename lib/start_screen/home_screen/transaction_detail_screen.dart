import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../button_classes/share_button/share_button.dart';
import '../../constants/color_class.dart';
import '../../helper_classes/helper_text/helper_text_class.dart';

class TransactionDetailScreen {
  Widget transactionDetailScreen({required String nameText,required String date,}){
    return Scaffold(
      backgroundColor: bgColor,
      body: StreamBuilder( stream: null,builder: (context,snapshot){
        return ListView.builder(itemCount: 10,itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  height: Get.height * .21,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: textColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      offset: const  Offset(0,2),
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HelperText().helperText(text: nameText, textColor: Colors.black, fontSize: 14,fontWeight: FontWeight.w500),
                            const SizedBox(height: 5.0,),
                            ShareButton().shareButton(onPress: (){}, text: "Share", buttonColor: bgColor, textColor: appColor, fontSize: 12.0,fontWeight: FontWeight.w600,width: 50.0,height: 30.0,borderRadius: BorderRadius.circular(30.0)),
                            const SizedBox(height: 7.0,),
                            Row(
                              children: [
                                HelperText().helperText(text: "Total", textColor: Colors.grey, fontSize: 12.0,fontWeight: FontWeight.w500),
                                const SizedBox(width: 70.0,),
                                HelperText().helperText(text: "Balance", textColor: Colors.grey, fontSize: 12.0,fontWeight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                HelperText().helperText(text: "Rs 1000.0", textColor:appColor, fontSize: 12.0,fontWeight: FontWeight.w500),
                                const SizedBox(width: 42.0,),
                                HelperText().helperText(text: "Rs 900.0", textColor: appColor, fontSize: 12.0,fontWeight: FontWeight.w500),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 5.0,),
                            HelperText().helperText(text: "#11", textColor: Colors.grey, fontSize: 12.0,fontWeight: FontWeight.w500),
                            const SizedBox(height: 5.0,),
                            HelperText().helperText(text: date, textColor: Colors.grey, fontSize: 12.0,fontWeight: FontWeight.w500),
                            const SizedBox(height: 11.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,

                              children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.print_outlined,color: Colors.grey,size: 27.0,)),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.share,color: Colors.grey,size: 27.0,)),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.grey,size: 27.0,))
                            ],),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 6,),
              ],
            ),
          );
        });
      },)
    );
  }
}