import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/JobAssignedScreen/Component/StatusBar.dart';
import 'package:greenworms/Screen/JobAssignedScreen/Component/jsProgressCart.dart';
import 'package:greenworms/Screen/JobAssignedScreen/controller.dart';
import 'package:greenworms/Screen/homeScreen/components/JobSheetCard.dart';
import 'package:sizer/sizer.dart';

class JobScreen extends StatelessWidget {
  JobScreen({super.key});
  JobController jctrl = Get.put(JobController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: GetBuilder<JobController>(builder: (_) {
        return SingleChildScrollView(
          child: Column(
            children: [
              StatusBar(),
              SizedBox(
                height: 2.8.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: SizedBox(
                  width: 92.05.w,
                  height: 5.8.h,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 5.6.w,
                        color: Color(0xff036163),
                      ),
                      isDense: true,
                      isCollapsed: true,
                      hintText: ("Search by Job Id"),
                      hintStyle: GoogleFonts.lexend(
                        color: Color(0xff036163),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.9.h),
                        borderSide:
                            BorderSide(color: Color(0xffD0D5DD), width: 0.15.h),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.5.h),
               if (jctrl.jStatus == 0)
                JobSheetCard(
                  JobStatus: 0,
                )
               else if (jctrl.jStatus == 1)
                 JobSheetCard(
                  JobStatus: 1,
               )
               else
               JobSheetCard(JobStatus: 2)
              
            ],
          ),
        );
      }),
    ));
  }
}
