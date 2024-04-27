import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../button_classes/share_button/share_button.dart';
import '../../constants/color_class.dart';
import '../../providers/add_client_provider/add_client_provider.dart';
import '../../providers/add_item_provider/add_item_provider.dart';
import '../../providers/get_value_provider/get_value_provider.dart';
import '../../providers/signature_provider/signature_provider.dart';
import '../../start_screen/invoices_screen/preview_invoice_screen/preview_invoice_screen.dart';
import '../bill_to_add_client/total_details.dart';
import '../controller_class/controller_class.dart';
import '../helper_text/helper_text_class.dart';
import 'add_new_item.dart';


class AddItemLine {
  String? item, description, unitPrice, unit, quantity, category;
  late ItemListController formData;
  Widget addItemLine() {
    return Column(
      children: [
        Divider(
          thickness: .5,
          color: appColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              HelperText().helperText(
                  text: "ITEMS",
                  fontSize: 14,
                  textColor: appColor,
                  fontWeight: FontWeight.w600),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Consumer<AddItemProvider>(
                  builder: (context, addItemProvider, child) {
                formData = addItemProvider.itemListController.isNotEmpty
                    ? addItemProvider.itemListController.first
                    : ItemListController();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              itemCount: addItemProvider.items.length,
                              itemBuilder: (context, index) {
                                if (addItemProvider.items.isEmpty) {
                                  return Container();
                                }
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      IconButton(
                                        icon: Icon(Icons.edit_outlined,color: appColor,size: 20.0,),
                                        onPressed: () {
                                          Get.bottomSheet(backgroundColor: Colors.transparent,
                                          AddNewItem(itemListController: formData,index: index,),
                                          );
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.delete_outline,color: appColor,size: 20.0,),
                                        onPressed: () {
                                          Provider.of<AddItemProvider>(context,listen: false).removeItems(index);
                                        },
                                      ),
                                    ],),
                                    Column(
                                      crossAxisAlignment:CrossAxisAlignment.start,
                                      children: [
                                        HelperText().helperText(text: addItemProvider.items[index],
                                          fontSize: 12,
                                          textColor: Colors.black,
                                          fontWeight: FontWeight.w600,),
                                        Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                            HelperText().helperText(
                                              text:"${addItemProvider.unitPrice[index]} x ${addItemProvider.quantity[index]}",
                                              fontSize: 12,
                                              textColor: Colors.black,
                                              fontWeight: FontWeight.w600,),
                                            HelperText().helperText(
                                              text: formatValue(double.parse(addItemProvider.perItemTotalAmount[index].toString())),
                                              fontSize: 12,
                                              textColor: containerTextColor,),
                                          ],
                                        ),
                                        HelperText().helperText(
                                          text:addItemProvider.description[index],
                                          fontSize: 13,
                                          textColor: containerTextColor,),
                                      ],
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.bottomSheet(
                                backgroundColor: Colors.transparent,
                                AddNewItem(itemListController: formData,),
                              );
                            },
                            child: HelperText().helperText(
                                text: "+ ADD NEW ITEMS",
                                fontSize: 14,
                                textColor: appColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: .5,color: appColor),
                    TotalDetails().totalDetails(),
                    Divider(thickness: .5,color: appColor,),
                    const SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          ShareButton().shareButton(
                              onPress: () {
                                Get.to(() => PreviewInvoiceScreen(
                                      companyName:Provider.of<GetValueProvider>(context,listen: false).businessname,
                                      companyAddress:Provider.of<GetValueProvider>(context,listen: false).businessaddress,
                                      companyEmail:Provider.of<GetValueProvider>(context,listen: false).businessemail,
                                      companyContact:Provider.of<GetValueProvider>(context,listen: false).contactnumber,
                                      clientName:Provider.of<ClientsListProvider>(context,listen: false).name,
                                      clientEmail:Provider.of<ClientsListProvider>(context,listen: false).email,
                                      clientMobile:Provider.of<ClientsListProvider>(context,listen: false).mobile,
                                      clientAddress:Provider.of<ClientsListProvider>(context,listen: false).address,
                                      itemList:Provider.of<AddItemProvider>(context,listen: false).items,
                                      priceList:Provider.of<AddItemProvider>(context,listen: false).unitPrice,
                                      quantityList:Provider.of<AddItemProvider>(context,listen: false).quantity,
                                      perItemTotalList:Provider.of<AddItemProvider>(context,listen: false).perItemTotalAmount,
                                      signatureBytes:Provider.of<SignatureProvider>(context,listen: false).signatureBytes,
                                  total: Provider.of<AddItemProvider>(context,listen: false).calculateTotal(),
                                    ));
                              },
                              text: "SAVE AND NEXT",
                              buttonColor: appColor,
                              textColor: textColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              width: Get.width,
                              height: 50.0,
                              borderRadius: BorderRadius.circular(10))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ],
    );
  }

  String formatValue(double value) {
    return value.toStringAsFixed(2);
  }
}
