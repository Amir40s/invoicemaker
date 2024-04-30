import 'package:flutter/material.dart';
import 'package:invoicemaker/start_screen/invoices_screen/edit_invoice/edit_invoice.dart';
import 'package:invoicemaker/start_screen/setting_screen/setting_screen.dart';
import '../../constants/color_class.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int myIndex = 0;
  List<Widget>myList = [
    EditInvoice(businessname: "", businessemail: ""),
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: appColor,
          unselectedItemColor: Colors.grey,
          onTap: (index){
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting")
          ]),
    );
  }
}
