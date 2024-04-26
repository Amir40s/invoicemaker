import 'package:flutter/cupertino.dart';

class ItemListController{
  TextEditingController itemController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController unitPriceController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  Map<String, String> toMap() {
    return {
      "Item": itemController.text.toString(),
      "Description": descriptionController.text.toString(),
      "UnitPrice": unitPriceController.text.toString(),
      "Unit": unitController.text.toString(),
      "Quantity": quantityController.text.toString(),
      "Category": categoryController.text.toString(),
    };
  }
}