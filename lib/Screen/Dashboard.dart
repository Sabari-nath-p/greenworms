import 'package:flutter/material.dart';

import 'package:greenworms/Screen/ExpenseScreen/components/ExpenseScreen.dart';
import 'package:greenworms/Screen/JobAssignedScreen/JobScreen.dart';
import 'package:greenworms/Screen/ProfileScreen/ProfileScreen.dart';
import 'package:greenworms/Screen/homeScreen/homeScreen.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int indexNum = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
       
        children: [
          if (indexNum == 0)
            Expanded(child: HomeScreen())
          else if (indexNum == 1)
            Expanded(child: JobScreen()
            )
            else if (indexNum == 2)
            Expanded(child: ExpenseScreen()
            )
          else if (indexNum == 3)
            Expanded(
              child: ProfileScreen())
        ],
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
