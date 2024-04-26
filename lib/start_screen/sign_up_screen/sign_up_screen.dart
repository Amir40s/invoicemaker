import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../button_classes/submit_button/submit_button.dart';
import '../../button_classes/text_button_class/text_button.dart';
import '../../constants/color_class.dart';
import '../../helper_classes/custom_textformfield/custom_TextFormField.dart';
import '../../helper_classes/helper_text/helper_text_class.dart';
import '../signIn_screen/signIn_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool passToggle = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 105.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: HelperText().helperText(
                        text: "Create an account",
                        textColor: appColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: Get.height * .05,
                ),
                CustomTextFormField().customTextFormField(
                    hintText: "Your name", icon: Icons.person, filledColor: fieldColor, height: 80.0,width: Get.width,controller: nameController,validator: (value){if(value!.isEmpty){return "Enter Name";}}),
                SizedBox(
                  height: Get.height * .001,
                ),
                CustomTextFormField()
                    .customTextFormField(hintText: "+11", icon: Icons.phone, filledColor: fieldColor, height: 80.0,width: Get.width,controller: phoneController,validator: (value){if(value!.isEmpty){return "Enter Phone Number";}}),
                SizedBox(
                  height: Get.height * .001,
                ),
                CustomTextFormField().customTextFormField(
                    hintText: "Email", icon: Icons.email_outlined, filledColor: fieldColor, height: 80.0,width: Get.width,controller: emailController,validator: (value){if(value!.isEmpty){return "Enter Email";}}),
                SizedBox(
                  height: Get.height * .001,
                ),
                CustomTextFormField().customTextFormField(
                    hintText: "Password",
                    icon: Icons.lock_outline_rounded,
                    suffixIcon: Icons.visibility_off_outlined, filledColor: fieldColor, height: 80.0,width: Get.width,controller: passwordController,validator: (value){if(value!.isEmpty){return "Enter Password";}}),
                SizedBox(
                  height: Get.height * .001,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton().customTextButton(
                        onPress: () {
                          Get.to(SignInScreen());
                        },
                        text: "Already have an account?",
                        textColor: appColor,
                        fontSize: 14),
                  ],
                ),
                SizedBox(
                  height: Get.height * .06,
                ),
                CustomSubmitButton().customSubmitButton(
                    text: "Sign Up",
                    textColor: Colors.white,
                    containerColor: appColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    onPress: () {
                      if(_formKey.currentState!.validate()){
                        _auth.createUserWithEmailAndPassword(email: emailController.text.toString(), password: passwordController.text.toString()).then((value) =>{
                        Get.to(SignInScreen())
                        });
                      }
                    }, height: 50.0,width: Get.width, borderRadius:  BorderRadius.circular(15),),
                SizedBox(
                  height: Get.height * .02,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(style: const TextStyle(fontSize: 12), children: [
                      TextSpan(
                          text: "By Sign, I accept the ",
                          style: GoogleFonts.poppins(color: Colors.black)),
                      TextSpan(
                          text: "Term of service",
                          style: GoogleFonts.poppins(color: appColor)),
                      TextSpan(
                          text: " and ",
                          style: GoogleFonts.poppins(color: Colors.black)),
                      TextSpan(
                          text: "Community \n Guidelines ",
                          style: GoogleFonts.poppins(color: appColor)),
                      TextSpan(
                          text: "and have read",
                          style: GoogleFonts.poppins(color: Colors.black)),
                      TextSpan(
                          text: " Privacy Policy",
                          style: GoogleFonts.poppins(color: appColor)),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
