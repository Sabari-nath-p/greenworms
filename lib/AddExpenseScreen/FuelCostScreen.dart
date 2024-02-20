import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/AddExpenseScreen/components/Summarycard.dart';
import 'package:greenworms/AddExpenseScreen/components/addExpensePage.dart';
import 'package:greenworms/Screen/ExpenseScreen/controller.dart';
import 'package:greenworms/Screen/homeScreen/controller.dart';
import 'package:sizer/sizer.dart';

class FuelCostScreen extends StatelessWidget {
  String type;
  FuelCostScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        floatingActionButton: CircleAvatar(
          radius: 6.w,
          backgroundColor: Color(0xff036163),
          child: SizedBox(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AddExpensePage(
                          type: type,
                        ));
              },
              child: Icon(Icons.add,
                  size: 7.5.w, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 5.9.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.5.h),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 4.2.w,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.36.w,
                  ),
                  Text(
                    type
                        .replaceAll("_", " ")
                        .toString()
                        .capitalizeFirst
                        .toString(),
                    style: GoogleFonts.lexend(
                        fontSize: 13.33.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 5.17.h,
              ),
              GetBuilder<ExpenseScreenController>(builder: (_) {
                return Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (_.ExpenseList != null)
                        for (var data in _.ExpenseList["data"])
                          if (data["type"] == type)
                            Summarycard(
                              expenseData: data,
                            ),
                    ],
                  ),
                ));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
