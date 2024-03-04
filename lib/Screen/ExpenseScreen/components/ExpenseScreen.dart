import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:greenworms/AddExpense/AddExpenseScreen/FuelCostScreen.dart';
import 'package:greenworms/Screen/AddExpenseScreen/FuelCostScreen.dart';
import 'package:greenworms/Screen/ExpenseScreen/controller.dart';
import 'package:http/http.dart';
import 'package:sizer/sizer.dart';

class ExpenseScreen extends StatelessWidget {
  ExpenseScreen({super.key});

  ExpenseScreenController ctrl = Get.put(ExpenseScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 4.4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.7.w,
              ),
              Text(
                "Regular Expense",
                style: GoogleFonts.lexend(
                    fontSize: 16.6.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 3.5.h,
              ),
              expenseButton("assets/images/fuel.png", "fuel_cost"),
              SizedBox(
                height: 1.h,
              ),
              expenseButton("assets/images/maintenance.png", "maintenance"),
              SizedBox(
                height: 3.5.h,
              ),
              Text(
                "Annual Expense",
                style: GoogleFonts.lexend(
                    fontSize: 16.6.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 3.5.h,
              ),
              expenseButton("assets/images/insurance.png", "insurance"),
              SizedBox(
                height: 1.h,
              ),
              expenseButton("assets/images/gps.png", "tax"),
              SizedBox(
                height: 1.h,
              ),
              expenseButton("assets/images/fitness.png", "fitness"),
              SizedBox(
                height: 1.h,
              ),
              expenseButton("assets/images/permit.png", "permit"),
              SizedBox(
                height: 1.h,
              ),
              expenseButton("assets/images/gps.png", "gps")
            ],
          ),
        ),
      ),
    );
  }
}

expenseButton(String img, String title) {
  return FadeInRight(
    child: InkWell(
      onTap: () {
        Get.to(
            () => FuelCostScreen(
                  type: title,
                ),
            transition: Transition.rightToLeft);
      },
      child: Container(
        width: 89.4.w,
        height: 7.3.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black.withOpacity(0.05))),
        child: Row(
          children: [
            SizedBox(
              width: 1.w,
            ),
            Container(
              width: 10.w,
              height: 10.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color(0xffE6FAFD)),
              child: SizedBox(
                  width: 3.w,
                  height: 3.w,
                  child: Image.asset(
                    img,
                  )),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              title.replaceAll("_", " ").toString().capitalizeFirst.toString(),
              style: GoogleFonts.lexend(
                  fontSize: 11.3.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff036163)),
            ),
            Expanded(child: Container()),
            SizedBox(
                width: 12.w,
                height: 12.w,
                child: InkWell(
                    onTap: () {
                      Get.to(
                          () => FuelCostScreen(
                                type: title,
                              ),
                          transition: Transition.rightToLeft);
                    },
                    child: Image.asset("assets/images/arrowright.png")))
          ],
        ),
      ),
    ),
  );
}
