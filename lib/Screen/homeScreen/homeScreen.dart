import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:greenworms/Screen/homeScreen/components/HMTcard.dart';
import 'package:greenworms/Screen/homeScreen/components/HMTitle.dart';
import 'package:greenworms/Screen/homeScreen/components/HPrimaryCard.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexNum = 0;
  List tabWidgets = [
    Text(
      "Home",
      style: TextStyle(fontSize: 20),
    ),
    Text(
      "Job",
      style: TextStyle(fontSize: 20),
    ),
    Text(
      "Expense",
      style: TextStyle(fontSize: 20),
    ),
    Text(
      "Profile",
      style: TextStyle(fontSize: 20),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // HPrimaryCard(),
            Positioned(
              child: Container(
                width: 100.w,
                height: 212,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(2, 97, 99, 1),
                ),
              ),
            ),
            Positioned(left: 6.8.w, top: 17.41.h, child: HMTCard()),
            Positioned(left: 2.7.w, right: 2.7.w, top: 7.6.h, child: HMTitle())
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/image/home.png",
                height: 7.3.h,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/image/jobbot.png",
                height: 7.3.h,
              ),
              label: "Job",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/image/expense.png",
                height: 7.3.h,
              ),
              label: "Expense",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/image/profilebot.png",
                height: 7.3.h,
              ),
              label: "Profile",
            ),
          ],
          iconSize: 40,
          selectedFontSize: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: indexNum,
          onTap: (int index) {
            setState(() {
              indexNum = index;
            });
          }),
    ));
  }
}
