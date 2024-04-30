import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../constants/color_class.dart';
import '../../providers/add_client_provider/add_client_provider.dart';
import '../dotted_border/bill_and_items_dotted_boarder_box/bill_and_items_dotted_boarder_box.dart';
import '../helper_text/helper_text_class.dart';
import 'add_new_clients.dart';
import 'package:intl/intl.dart';

class BillToInvoiceInfo {

  Padding billToInvoiceInfo() {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('dd/MM/yyyy').format(currentDate);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        HelperText().helperText(
            text: "BILL TO",
            fontSize: 14,
            textColor: appColor,
            fontWeight: FontWeight.w600),
        const SizedBox(
          height: 10.0,
        ),
        Consumer<ClientsListProvider>(
            builder: (context, clientListProvider, child) {
          return GestureDetector(
            onLongPress: (){Provider.of<ClientsListProvider>(context,listen: false).clearAllData();},
            onTap: () {
              Get.bottomSheet(
                  backgroundColor: Colors.transparent,
                  isDismissible: false,
                  AddNewClientBottomSheet().addNewClientBottomSheet());
            },
            child: clientListProvider.name == null
                ? BillAndItemsDottedBox().billAndItemsDottedBox(
                    text: "+ Add client", height: 50.0, width: 150.0)
                : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HelperText().helperText(
                              text: clientListProvider.name,
                              fontSize: 12.0,
                              textColor: Colors.black,
                              fontWeight: FontWeight.w600),
                          HelperText().helperText(
                              text: clientListProvider.email,
                              fontSize: 12.0,
                              textColor: containerTextColor,
                              // fontWeight: FontWeight.w600
                          ),
                          HelperText().helperText(
                              text: clientListProvider.address,
                              fontSize: 12.0,
                              textColor: containerTextColor,
                              // fontWeight: FontWeight.w600
                          ),
                          HelperText().helperText(
                              text: clientListProvider.mobile,
                              fontSize: 12.0,
                              textColor: containerTextColor,
                              // fontWeight: FontWeight.w600
                          ),
                          HelperText().helperText(
                              text: clientListProvider.phone,
                              fontSize: 12.0,
                              textColor: containerTextColor,),
                          HelperText().helperText(
                              text: clientListProvider.fax,
                              fontSize: 12.0,
                              textColor: containerTextColor,),
                        ],
                      ),
                      const SizedBox(width: 0.0,height: 0.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          HelperText().helperText(
                              text: "INVOICE INFO",
                              fontSize: 14,
                              textColor: appColor,
                              fontWeight: FontWeight.w600),
                          HelperText().helperText(
                            text: "Date: $formattedDate",
                            fontSize: 12.0,
                            textColor: containerTextColor,
                          ),
                        ],
                      ),
                    ],
                  ),
          );
        }),
      ]),
    );
  }
}