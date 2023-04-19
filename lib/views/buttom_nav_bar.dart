import 'package:design_phone_number/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int currenIndex = 0;
  List<Widget> screens = [
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currenIndex,
          onTap: (value) {
            setState(() {
              currenIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "contact",
                icon: Icon(
                  Icons.contact_phone_sharp,
                  size: 18.sp,
                )),
            BottomNavigationBarItem(
                label: "recent",
                icon: Icon(Icons.replay_circle_filled_outlined, size: 18.sp)),
            BottomNavigationBarItem(
                label: "KeyPad", icon: Icon(Icons.keyboard_sharp, size: 18.sp)),
          ]),
    );
  }
}
