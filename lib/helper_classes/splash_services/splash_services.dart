import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../start_screen/business_profile_screen/business_profile_screen.dart';
import '../../start_screen/onboarding_screen/onBoarding_screen.dart';


class SplashServices{
  void isLogin(BuildContext context){
    final  auth = FirebaseAuth.instance;
    final  user = auth.currentUser;
    if(user != null){
      Timer(const Duration(seconds: 3), () {Get.to(() => BusinessProfileScreen());});
    }else{
      Timer(const Duration(seconds: 3), () {Get.to(() =>const OnBoardingScreenOne());});
    }
  }
}