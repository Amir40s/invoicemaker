import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color_class.dart';
import '../../../start_screen/home_screen/party_detail_screen.dart';
import '../../../start_screen/home_screen/transaction_detail_screen.dart';
import '../../helper_text/helper_text_class.dart';
import '../tabBar_container/tabBar_container.dart';


class CustomHomeAppBar {
  Widget customHomeAppBar(
      {required IconData leadingIcon,
        required VoidCallback leadingTab,
        required VoidCallback action1Tab,required VoidCallback action2Tab,
        required String text,
        IconData? actionIcon1,
        IconData? actionIcon2}) {
    return Expanded(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: appColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: leadingTab, icon: Icon(leadingIcon, color: textColor,size: 30)),
                      const SizedBox(width: 10,),
                      HelperText().helperText(
                          text: text,
                          textColor: textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Row(
                    children: [IconButton(onPressed: action1Tab, icon: Icon(actionIcon1, color: textColor,size: 30,)),
                      const SizedBox(width: 10,),
                      IconButton(onPressed: action2Tab, icon: Icon(actionIcon2, color: textColor,size: 30)),],
                  )
                ],
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 60.0,
                      child: TabBar(
                        padding: const EdgeInsets.all(10),
                        physics: const ClampingScrollPhysics(),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelColor: textColor,
                        labelColor: appColor,
                        dividerColor: appColor,
                        tabs: [
                          Tab(
                            child: CustomTabBarButton().customTabBarButton(text: "History",),
                          ),
                          Tab(
                            child: CustomTabBarButton().customTabBarButton(text: "Party Details",),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          TransactionDetailScreen().transactionDetailScreen(nameText: "Rahman", date: "15,March,2024",),
                          PartyDetailScreen().partyDetailScreen(nameText: "Rahman", date: "25,March,2023", rupees: "Rs.2000", detail: "You'll Get"),
                        ],
                      ),
                    ),
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
