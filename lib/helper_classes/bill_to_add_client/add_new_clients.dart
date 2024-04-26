import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../button_classes/text_button_class/text_button.dart';
import '../../constants/color_class.dart';
import '../../providers/add_client_provider/add_client_provider.dart';
import '../helper_text/helper_text_class.dart';
import '../simple_textformfield/simple_textformfield.dart';

class AddNewClientBottomSheet {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  var mobileController = TextEditingController();
  var phoneController = TextEditingController();
  var faxController = TextEditingController();

  Container addNewClientBottomSheet() {
    return Container(
      width: Get.width,
      height: 700.0,
      decoration: BoxDecoration(
        color: textColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: appColor,
                      )),
                  const SizedBox(
                    width: 15.0,
                  ),
                  HelperText().helperText(
                    text: "Add new client",
                    fontSize: 14.0,
                    textColor: appColor,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    width: 120.0,
                  ),
                  Consumer<ClientsListProvider>(
                      builder: (context, provider, child) {
                    return CustomTextButton().customTextButton(
                      onPress: () {
                        provider.addClient(
                            nameController.text.toString(),
                            emailController.text.toString(),
                            addressController.text.toString(),
                            mobileController.text.toString(),
                            phoneController.text.toString(),
                            faxController.text.toString());
                        Get.back();
                      },
                      text: "Save",
                      textColor: appColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    );
                  }),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SimpleCustomTextFormField().simpleCustomTextFormField(
                    keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      fieldName: "Name",
                      labelName: "Name",
                      height: 70.0,
                      width: Get.width,
                      controller: nameController),
                  SimpleCustomTextFormField().simpleCustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      fieldName: "Email",
                      labelName: "Email",
                      height: 70.0,
                      width: Get.width,
                      controller: emailController),
                  SimpleCustomTextFormField().simpleCustomTextFormField(
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      fieldName: "Address",
                      labelName: "Address",
                      height: 70.0,
                      width: Get.width,
                      controller: addressController),
                  SimpleCustomTextFormField().simpleCustomTextFormField(
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      fieldName: "Mobile (optional)",
                      labelName: "Mobile (optional)",
                      height: 70.0,
                      width: Get.width,
                      controller: mobileController),
                  SimpleCustomTextFormField().simpleCustomTextFormField(
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      fieldName: "Phone (optional)",
                      labelName: "Phone (optional)",
                      height: 70.0,
                      width: Get.width,
                      controller: phoneController),
                  SimpleCustomTextFormField().simpleCustomTextFormField(
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.go,
                      fieldName: "Fax (optional)",
                      labelName: "Fax (optional)",
                      height: 70.0,
                      width: Get.width,
                      controller: faxController),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
