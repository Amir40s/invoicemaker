import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoicemaker/button_classes/text_button_class/text_button.dart';
import 'package:provider/provider.dart';
import '../../../constants/color_class.dart';
import '../../../helper_classes/add_new_items/add_item_line.dart';
import '../../../helper_classes/bill_to_add_client/bill_to_invoice_info.dart';
import '../../../helper_classes/custom_appBar_container/custom_appBar.dart';
import '../../../helper_classes/helper_text/helper_text_class.dart';
import '../../../providers/get_value_provider/get_value_provider.dart';
import '../../business_profile_screen/business_profile_screen.dart';


class EditInvoice extends StatelessWidget {

  EditInvoice({super.key, required this.businessname,required  this.businessemail});
  String businessname, businessemail;
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _businessEmailController = TextEditingController();
  final TextEditingController _businessContactController = TextEditingController();
  final TextEditingController _businessAddressController = TextEditingController();

  void clearFields() {
    _businessNameController.clear();
    _businessEmailController.clear();
    _businessContactController.clear();
    _businessAddressController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final getValueProvider = Provider.of<GetValueProvider>(context,listen: false);
    return Scaffold(
      backgroundColor: textColor,
      appBar: CustomAppBar().customAppBar(text: "Create invoice",titleColor: textColor,
          backgroundColor: appColor, onPress1: () {}, useLeadingIcon: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 20.0,right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HelperText().helperText(text:  getValueProvider.businessname?.isNotEmpty == true
                          ? getValueProvider.businessname!
                          : "Company Name", fontSize: 14.0,textColor: Colors.black,fontWeight: FontWeight.bold),
                      const SizedBox(height: 5.0,),
                      HelperText().helperText(text: getValueProvider.businessemail?.isNotEmpty == true
                          ? getValueProvider.businessemail!
                          : "Email Address", fontSize: 12.0,textColor: containerTextColor,),
                    ],
                  ),
                      Row(children: [
                        CustomTextButton().customTextButton(onPress: (){Get.to(() => BusinessProfileScreen());},
                            text: "Set Profile", textColor: appColor, fontSize: 14.0,fontWeight: FontWeight.bold),],
                      ),],),),
            Divider(thickness: .5,color: appColor,),
            BillToInvoiceInfo().billToInvoiceInfo(),
            const SizedBox(height: 10.0,),
           AddItemLine().addItemLine(),
          ],
        ),
      ),
    );
  }
}
