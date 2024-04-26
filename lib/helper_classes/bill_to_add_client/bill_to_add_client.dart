// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:invoice_maker_app/constants/color_class.dart';
// import 'package:invoice_maker_app/helper_classes/bill_to_add_client/add_new_clients.dart';
// import 'package:invoice_maker_app/helper_classes/helper_text/helper_text_class.dart';
// import '../../button_classes/floating_action_button/floating_action_button.dart';
//
// class BillToAddClient extends StatelessWidget {
//   const BillToAddClient ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       backgroundColor: textColor,
//       body: Container(
//         height: 500.0,
//         width: Get.width,
//         decoration: BoxDecoration(color: textColor, borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             HelperText().helperText(text: "No Clients!", fontSize: 14.0,fontWeight: FontWeight.bold,textColor: Colors.black,),
//             HelperText().helperText(text: "Please tap on the plus (+) button below to\n create a client", fontSize: 12.0,fontWeight: FontWeight.w500,textColor: fieldColor,textAlign: TextAlign.center),
//             const SizedBox(height: 200.0,),
//             CustomFloatingActionButton().customFloatingActionButton(onPress: (){ Get.bottomSheet(AddNewClientBottomSheet().addNewClientBottomSheet());}, icon: Icons.add, iconSize: 27.0,backgroundColor: appColor,iconColor: textColor),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
