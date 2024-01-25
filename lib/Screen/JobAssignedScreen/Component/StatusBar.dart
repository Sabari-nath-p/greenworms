import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/JobAssignedScreen/controller.dart';
import 'package:sizer/sizer.dart';

class StatusBar extends StatelessWidget {
  StatusBar({super.key});

  JobController jctrl = Get.put(JobController());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(5.w, 3.52.h, 0, 0),
              child: Container(
                width: 92.05.w,
                height: 5.8.h,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff036163),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(0.9.h)),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        jctrl.jStatus = 0;
                        jctrl.update();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Container(
                            width: 24.7.w,
                            height: 3.52.h,
                            alignment: Alignment.center,
                            child: Text("Assigned",
                                style: GoogleFonts.lexend(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: (jctrl.jStatus != 0)
                                        ? Color(0xff036163)
                                        : Colors.white)),
                            decoration: BoxDecoration(
                                color: (jctrl.jStatus == 0)
                                    ? Color(0xff036163)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(0.9.h))),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        jctrl.jStatus = 1;
                        jctrl.update();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Container(
                            width: 24.7.w,
                            height: 3.52.h,
                            alignment: Alignment.center,
                            child: Text("In Progress",
                                style: GoogleFonts.lexend(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: (jctrl.jStatus != 1)
                                        ? Color(0xff036163)
                                        : Colors.white)),
                            decoration: BoxDecoration(
                                color: (jctrl.jStatus == 1)
                                    ? Color(0xff036163)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(0.9.h))),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        jctrl.jStatus = 2;
                        jctrl.update();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Container(
                            width: 24.7.w,
                            height: 3.52.h,
                            alignment: Alignment.center,
                            child: Text("Completed",
                                style: GoogleFonts.lexend(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: (jctrl.jStatus != 2)
                                        ? Color(0xff036163)
                                        : Colors.white)),
                            decoration: BoxDecoration(
                                color: (jctrl.jStatus == 2)
                                    ? Color(0xff036163)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(0.9.h))),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
