import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/color_class.dart';
import '../../helper_classes/helper_text/helper_text_class.dart';

class PartyDetailScreen{
  Widget partyDetailScreen({required String nameText,required String date,required String rupees,required String detail}){
    return Scaffold(
      backgroundColor: bgColor,
      body: StreamBuilder( stream: null,builder: (context,snapshot){
        return ListView.builder(itemCount: 10,itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * .1,
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
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HelperText().helperText(text: nameText, textColor: Colors.black, fontSize: 12,fontWeight: FontWeight.w500),
                            HelperText().helperText(text: date, textColor: Colors.grey, fontSize: 12,fontWeight: FontWeight.w500),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HelperText().helperText(text: rupees, textColor: appColor, fontSize: 12,fontWeight: FontWeight.w500),
                            HelperText().helperText(text: detail, textColor: appColor, fontSize: 12,fontWeight: FontWeight.w500),
                          ],
                        ),
                      ],
                    ),
                  ),

                ),
                const SizedBox(height: 6,)
              ],
            ),
          );
        });
      },),
    );
  }
}