import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../button_classes/submit_button/submit_button.dart';
import '../../button_classes/text_button_class/text_button.dart';
import '../../constants/color_class.dart';
import '../../helper_classes/custom_textformfield/custom_TextFormField.dart';
import '../../helper_classes/helper_text/helper_text_class.dart';
import '../business_profile_screen/business_profile_screen.dart';
import '../sign_up_screen/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Center(
                    child: HelperText().helperText(
                        text: "Sign In",
                        textColor: appColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Center(
                    child: HelperText().helperText(
                        text: "Welcome back",
                        textColor: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFormField().customTextFormField(
                    hintText: "Email",
                    icon: Icons.email_outlined,
                    filledColor: fieldColor,
                    height: 80.0,
                    width: Get.width,
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      }
                    }),
                SizedBox(
                  height: Get.height * .001,
                ),
                CustomTextFormField().customTextFormField(
                    hintText: "Password",
                    icon: Icons.lock_outline_rounded,
                    suffixIcon: Icons.visibility_off_outlined,
                    filledColor: fieldColor,
                    height: 80.0,
                    width: Get.width,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                    }),
                SizedBox(
                  height: Get.height * .001,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton().customTextButton(
                        onPress: () {},
                        text: "Forgot Password?",
                        textColor: appColor,
                        fontSize: 14),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomSubmitButton().customSubmitButton(
                  text: "Sign In",
                  textColor: Colors.white,
                  containerColor: appColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  onPress: () {
                    if (_formKey.currentState!.validate()) {
                      _auth
                          .signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text.toString())
                          .then((value) =>
                              {Get.to(() => BusinessProfileScreen())});
                    }
                  },
                  height: 50.0,
                  width: Get.width,
                  borderRadius: BorderRadius.circular(15),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton().customTextButton(
                        onPress: () {
                          Get.to(SignUpScreen());
                        },
                        text: "Don't have an account?",
                        textColor: appColor,
                        fontSize: 14),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                    child: HelperText().helperText(
                  text: "or",
                  textColor: Colors.black,
                  fontSize: 14,
                )),
                const SizedBox(
                  height: 25,
                ),
                CustomSubmitButton().customSubmitButton(
                  text: "Sign In with Google",
                  textColor: Colors.black,
                  containerColor: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  border: Border.all(color: Colors.black, width: 0.15),
                  onPress: () {},
                  height: 50.0,
                  width: Get.width,
                  borderRadius: BorderRadius.circular(15),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: const TextStyle(fontSize: 12),
                        children: [
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
