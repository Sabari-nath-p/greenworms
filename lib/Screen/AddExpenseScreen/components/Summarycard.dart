import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Summarycard extends StatelessWidget {
  var expenseData;
  Summarycard({super.key, required this.expenseData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88.w,
      // height: 14.82.h,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        border: Border.all(color: Color.fromRGBO(243, 244, 246, 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),

              //top: 5,
              Container(
                width: 3.h,
                height: 3.h,
                child: Image.asset("assets/image/tickbox.png"),
              ),
              SizedBox(
                width: 2.28.w,
              ),
              SizedBox(
                child: Text("${expenseData["date"]}",
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000))),
              ),

              SizedBox(
                width: 3.42.w,
              ),

              CircleAvatar(
                backgroundColor: (Color(0xffE6FAFD)),
                radius: 3.w,
                child: Center(
                  child: Text("₹",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff036163))),
                ),
              ),
              SizedBox(
                width: 2.28.w,
              ),
              SizedBox(
                child: Text("${expenseData["amount"]}",
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000))),
              ),
            ],
          ),
          if (expenseData["images"] != []) SizedBox(height: 2.19.h),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: [
              for (var data in expenseData["images"])
                InkWell(
                  onTap: () {
                    print(data);
                  },
                  child: Container(
                    height: 6.88.h,
                    width: 6.88.h,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.network(data["image"])),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
