import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../button_classes/text_button_class/text_button.dart';
import '../../constants/color_class.dart';
import '../../providers/add_item_provider/add_item_provider.dart';
import '../controller_class/controller_class.dart';
import '../helper_text/helper_text_class.dart';
import '../simple_textformfield/simple_textformfield.dart';

class AddNewItem extends StatelessWidget {
  AddNewItem({super.key, required this.itemListController, this.index = -1});
  ItemListController itemListController;
  final int index;

  @override
  Widget build(BuildContext context) {
    final addItemProvider = Provider.of<AddItemProvider>(context, listen: false);
    if (index != -1) {
      itemListController.itemController.text = Provider.of<AddItemProvider>(context).items[index];
      itemListController.descriptionController.text = Provider.of<AddItemProvider>(context).description[index];
      itemListController.unitPriceController.text = Provider.of<AddItemProvider>(context).unitPrice[index];
      itemListController.unitController.text = Provider.of<AddItemProvider>(context).unit[index];
      itemListController.quantityController.text = Provider.of<AddItemProvider>(context).quantity[index];
      itemListController.categoryController.text = Provider.of<AddItemProvider>(context).category[index];
      (
          double.parse(itemListController.unitPriceController.text.toString()) *
              double.parse(itemListController.quantityController.text.toString())
      ).toString();
    }

    return Container(
      width: Get.width,
      height: 700.0,
      decoration: BoxDecoration(
        color: textColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {Get.back();},
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: appColor,
                      )),
                  const SizedBox(
                    width: 15.0,
                  ),
                  HelperText().helperText(
                    text: "Add new item",
                    fontSize: 14.0,
                    textColor: appColor,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    width: 130.0,
                  ),
                  CustomTextButton().customTextButton(
                    onPress: () {
                      if (index != -1) {
                        addItemProvider.updateItem(
                          index,
                          itemListController.itemController.text.toString(),
                          itemListController.descriptionController.text.toString(),
                          itemListController.unitPriceController.text.toString(),
                          itemListController.unitController.text.toString(),
                          itemListController.quantityController.text.toString(),
                          itemListController.categoryController.text.toString(),
                          (
                              double.parse(itemListController.unitPriceController.text.toString()) *
                                  double.parse(itemListController.quantityController.text.toString())
                          ).toString(),
                        );
                      }
                      else {addItemProvider.addItem(
                        itemListController.itemController.text.toString(),
                        itemListController.descriptionController.text.toString(),
                        itemListController.unitPriceController.text.toString(),
                        itemListController.unitController.text.toString(),
                        itemListController.quantityController.text.toString(),
                        itemListController.categoryController.text.toString(),
                        (
                            double.parse(itemListController.unitPriceController.text.toString()) *
                                double.parse(itemListController.quantityController.text.toString())
                        ).toString(),
                      );}
                      Get.back();
                    },
                    text: "Save",
                    textColor: appColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                child: Column(
                  children: [
                    SimpleCustomTextFormField().simpleCustomTextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        fieldName: "Item Name",
                        labelName: "Item Name",
                        height: 70.0,
                        width: Get.width,
                        controller: itemListController.itemController),
                    SimpleCustomTextFormField().simpleCustomTextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        fieldName: "Description (optional)",
                        labelName: "Description (optional)",
                        height: 70.0,
                        width: Get.width,
                        controller: itemListController.descriptionController),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SimpleCustomTextFormField().simpleCustomTextFormField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            fieldName: "Unit price",
                            labelName: "Unit price",
                            height:70.0,
                            width: 90.0,
                            controller: itemListController.unitPriceController),
                        SimpleCustomTextFormField().simpleCustomTextFormField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            fieldName: "Unit",
                            labelName: "Unit",
                            height: 70.0,
                            width: 90.0,
                            controller: itemListController.unitController),
                        SimpleCustomTextFormField().simpleCustomTextFormField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            fieldName: "Quantity",
                            labelName: "Quantity",
                            height: 70.0,
                            width: 90.0,
                            controller: itemListController.quantityController),
                      ],
                    ),
                    SimpleCustomTextFormField().simpleCustomTextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.go,
                        fieldName: "Category",
                        labelName: "Category",
                        height: 70.0,
                        width: Get.width,
                        controller: itemListController.categoryController),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}