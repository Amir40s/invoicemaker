import 'package:flutter/material.dart';

import '../../../constants/color_class.dart';
import '../../menu_screen/menu_screen.dart';
import '../home_screen.dart';


class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int myIndex = 0;
  List<Widget>myList = [
    const HomeScreen(),
    const MenuScreen(),
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
            BottomNavigationBarItem(icon: Icon(Icons.perm_contact_cal_outlined),label: "Profile")
      ]),
    );
  }
}
