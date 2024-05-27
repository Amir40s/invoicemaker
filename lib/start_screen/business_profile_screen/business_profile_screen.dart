  import 'dart:io';
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:provider/provider.dart';
  import '../../button_classes/share_button/share_button.dart';
  import '../../constants/color_class.dart';
  import '../../helper_classes/cardItems_details/cardItem_details.dart';
  import '../../helper_classes/custom_appBar_container/custom_appBar.dart';
  import '../../helper_classes/custom_textformfield/cutom_textformfield_label.dart';
  import '../../helper_classes/dotted_border/custom_dotted_Border.dart';
  import '../../helper_classes/helper_text/helper_text_class.dart';
  import '../../helper_classes/logo_container/logo_container.dart';
  import '../../providers/get_value_provider/get_value_provider.dart';
  import '../../providers/logo_image_provider/logo_image_provider.dart';
  import '../../providers/signature_provider/signature_provider.dart';
  import '../botttomBar_screen/bottomBar_screen.dart';

  class BusinessProfileScreen extends StatelessWidget {
    BusinessProfileScreen({super.key});

    TextEditingController _businessNameController = TextEditingController();
    TextEditingController _businessEmailController = TextEditingController();
    TextEditingController _businessContactController = TextEditingController();
    TextEditingController _businessAddressController = TextEditingController();

    void clearFields() {
      _businessNameController.clear();
      _businessEmailController.clear();
      _businessContactController.clear();
      _businessAddressController.clear();
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar().customAppBar(
          leadingIconColor: textColor,
          text: "Business profile",
          titleColor: textColor,
          backgroundColor: appColor,
          onPress1: () {Get.back();},
          useLeadingIcon: true,),
        body: Column(
          children: [
            Consumer<GetValueProvider>(
                builder: (context, getValueProvider, child) {
              return Container(
                height: 190.0,
                width: 1000.0,
                color: bgColor,
                child: Column(children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Center(
                      child: Container(
                        width: Get.width * .95,
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  HelperText().helperText(
                                      text: getValueProvider.businessname?.isNotEmpty == true
                                          ? getValueProvider.businessname! : "Company Name",
                                      textColor: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                  Visibility(
                                    visible: true,
                                    child: Center(
                                      child: Consumer<MyImageProvider>(
                                        builder: (context, imageProvider, child) {
                                          return GestureDetector(
                                            onTap: () {
                                            imageProvider.pickImage(context);
                                            },
                                            child: imageProvider.imagepath == imageProvider.blankImage
                                                ? Padding(padding: const EdgeInsets.symmetric(vertical: 10.0),
                                                  child: LogoContainer().logoContainer(),
                                                )
                                                : CircleAvatar(
                                              radius: 30.0,
                                              backgroundColor: textColor,
                                              backgroundImage: FileImage(File(imageProvider.imagepath.toString())),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Column(
                                    children: [
                                      SizedBox(height: 60.0,
                                        child: VerticalDivider(thickness: 2.0,
                                          color: Colors.black,width: 3.0,),),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CardItemDetails().cardItemDetails(
                                            icon: Icons.phone,
                                            text: getValueProvider.contactnumber ?.isNotEmpty == true
                                                ? getValueProvider.contactnumber! : "Contact Number",
                                            iconSize: 18.0,
                                            fontSize: 12.0,
                                            iconColor: fieldTextColor),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        CardItemDetails().cardItemDetails(
                                            icon: Icons.email_outlined,
                                            text: getValueProvider.businessemail ?.isNotEmpty == true
                                                ? getValueProvider.businessemail! : "Email Address",
                                            iconSize: 18.0,
                                            fontSize: 12.0,
                                            iconColor: fieldTextColor),
                                        const SizedBox(
                                          height: 3.0,
                                        ),
                                        CardItemDetails().cardItemDetails(
                                            icon: Icons.business_center_outlined,
                                            text: getValueProvider.businessaddress ?.isNotEmpty == true
                                                ? getValueProvider.businessaddress! : "Business Address",
                                            iconSize: 18.0,
                                            fontSize: 12.0,
                                            iconColor: fieldTextColor),
                                      ],),
                                  ),],),
                            )],),),
                    ),),]),
              );}),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardItemDetails().cardItemDetails(
                            icon: Icons.lightbulb_outlined,
                            text:"67% businessmen saw their business increase after\nsharing their visiting card",
                            iconSize: 27.0,
                            fontSize: 10.5,
                            iconColor: Colors.amber),
                      ],
                    ),
                  ),
                  Divider(thickness: .1,color: fieldTextColor,),
                  Padding(padding:const EdgeInsets.only(left: 12.0, top: 7.0, bottom: 7.0),
                    child: Row(
                      children: [
                        HelperText().helperText(
                            text: "Basic Details",
                            textColor: appColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                  ),
                  Divider(thickness: .1,color: fieldTextColor,),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
                    child: Consumer<GetValueProvider>(builder: (context, getValueProvider, child) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LabelTextFormField().labelTextFormField(
                            onChanged: (name) {
                              getValueProvider.updateText(
                                name,
                                getValueProvider.contactnumber,
                                getValueProvider.businessemail,
                                getValueProvider.businessaddress,
                              );
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            maxLength: 24,
                            controller: _businessNameController,
                            labelText: "Business Name",
                            hintText: "Business Name",
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          LabelTextFormField().labelTextFormField(
                              onChanged: (no) {
                                getValueProvider.updateText(
                                    getValueProvider.businessname,
                                    no,
                                    getValueProvider.businessemail,
                                    getValueProvider.businessaddress);
                              },
                              textInputAction: TextInputAction.next,
                              maxLength: 14,
                              controller: _businessContactController,
                              keyboardType: TextInputType.phone,
                              labelText: "Phone Number ",
                              hintText: "Phone Number ",),
                          const SizedBox(
                            height: 2.0,
                          ),
                          LabelTextFormField().labelTextFormField(
                              onChanged: (email) {
                                getValueProvider.updateText(
                                    getValueProvider.businessname,
                                    getValueProvider.contactnumber,
                                    email,
                                    getValueProvider.businessaddress);
                              },
                              textInputAction: TextInputAction.next,
                              maxLength: 30,
                              keyboardType: TextInputType.emailAddress,
                              controller: _businessEmailController,

                              labelText: "Email",
                              hintText: "Email",),
                          const SizedBox(
                            height: 2.0,
                          ),
                          LabelTextFormField().labelTextFormField(
                              onChanged: (address) {
                                getValueProvider.updateText(
                                    getValueProvider.businessname,
                                    getValueProvider.contactnumber,
                                    getValueProvider.businessemail,
                                    address);
                              },
                              textInputAction: TextInputAction.go,
                              maxLength: 37,
                              keyboardType: TextInputType.streetAddress,
                              controller: _businessAddressController,
                              labelText: "Business Address",
                              hintText: "Business Address",),
                          const SizedBox(
                            height: 2.0,
                          ),
                          HelperText().helperText(
                            text: "Signature",
                            textColor: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(height: 10.0,),
                          DottedBorderContainer(),
                          const SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Consumer<SignatureProvider>(builder: (context, signatureProvider, child) {
                                return ShareButton().shareButton(
                                  onPress: () { signatureProvider.clearSignature(); },
                                  text: "Remove",
                                  buttonColor: bgColor,
                                  textColor: appColor,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.bold,
                                  width: 100,
                                  height: 40.0,
                                  borderRadius: BorderRadius.circular(30),
                                );
                              }),
                            ],
                          ),
                          const SizedBox(height: 20.0,),],);
                    }),),
                ],),))
          ],),
        bottomNavigationBar: Row(
          children: [
            ShareButton().shareButton(
              onPress: () {
                Provider.of<GetValueProvider>(context, listen: false).clearAllData();
                Provider.of<SignatureProvider>(context, listen: false).clearSignature();
                Provider.of<MyImageProvider>(context, listen: false).clearImage();
                clearFields();
              },
              text: "Clear",
              buttonColor: textColor,
              textColor: fieldTextColor,
              fontSize: 16.0,
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: 45.0,
              boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey.shade400)],
              fontWeight: FontWeight.w500,
            ),
            ShareButton().shareButton(
              onPress: () {
                Get.offAll(() => const BottomNavBarScreen());
              },
              text: "Save",
              buttonColor: appColor,
              textColor: textColor,
              fontSize: 16.0,
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: 45.0,
              fontWeight: FontWeight.w500,
            ),],
        ),);
    }
  }