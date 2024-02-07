import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/homeScreen/controller.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class JobSheetCard extends StatelessWidget {
  int JobStatus;
  var jobData;

  JobSheetCard({super.key, required this.JobStatus, required this.jobData});
  homeController homeCtrl = Get.put(homeController());
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: Container(
        width: 91.w,
        margin: EdgeInsets.symmetric(vertical: 2.5),
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff007C58).withOpacity(0.02.w),
            ),
            borderRadius: BorderRadius.circular(0.9.h)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(4.17.w, 1.h, 0.w, 0.h),
          child: Column(
            children: [
              if (JobStatus == 1)
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 27.47.w,
                    height: 2.5.h,
                    decoration: BoxDecoration(
                        color: Color(0xff036163).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5.8.h)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          width: 1.5.h,
                          height: 1.5.h,
                          decoration: BoxDecoration(
                              color: Color(0xff036163),
                              borderRadius: BorderRadius.circular(25.h)),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        SizedBox(
                          width: 19.w,
                          child: Text("In Progress",
                              style: GoogleFonts.lexend(
                                  fontSize: 8.33.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff036163))),
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/images/jobid.png")),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "Job Id",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                  Text(
                    jobData["id"].toString(),
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 2.w,
              ),
              Container(
                width: 80.w,
                height: 0.01.h,
                color: Colors.black.withOpacity(0.2.w),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/images/jobid.png")),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "Pickup Date ",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                  Text(
                    jobData["date"].toString(),
                    textAlign: TextAlign.end,
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 2.w,
              ),
              Container(
                width: 80.w,
                height: 0.01.h,
                color: Colors.black.withOpacity(0.2.w),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/images/item.png")),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "Pickup Item",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                  Text(
                    jobData["material_type"].toString(),
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 2.w,
              ),
              Container(
                width: 80.w,
                height: 0.01.h,
                color: Colors.black.withOpacity(0.2.w),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/images/quantity.png")),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "Approx Qty",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                  Text(
                    jobData["weight"].toString(),
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 2.w,
              ),
              Container(
                width: 80.w,
                height: 0.01.h,
                color: Colors.black.withOpacity(0.2.w),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/images/marker.png")),
                  SizedBox(
                    width: 3.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "location",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  jobData["collection_point_data"]["name"].toString(),
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 4.w,
              ),
              if (JobStatus == 0)
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        homeCtrl.reasonController.text = "";
                        showDialog(
                            context: context,
                            builder: ((context) => Material(
                                  color: Colors.transparent,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 86.05.w,
                                      height: 28.94.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.2.w, vertical: 4.7.h),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: GetBuilder<homeController>(
                                          builder: (_) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Reject Job",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.lexend(
                                                  fontSize: 11.33.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff344054)),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              controller:
                                                  homeCtrl.reasonController,
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              decoration: InputDecoration(
                                                hintText: "Reason",
                                                isDense: true,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.9.h),
                                                  borderSide: BorderSide(
                                                      color: Color(0xffD0D5DD),
                                                      width: 0.15.h),
                                                ),
                                              ),
                                            ),
                                            Expanded(child: Container()),
                                            Container(
                                              alignment: Alignment.center,
                                              child: InkWell(
                                                onTap: () {
                                                  homeCtrl
                                                      .changeJobStatusReject(
                                                          jobData["id"],
                                                          context);
                                                },
                                                child: Container(
                                                    width: 33.9.w,
                                                    height: 4.15.h,
                                                    alignment: Alignment.center,
                                                    child: (homeCtrl.isLoading)
                                                        ? LoadingAnimationWidget
                                                            .staggeredDotsWave(
                                                                color: Colors
                                                                    .white,
                                                                size: 24)
                                                        : Text("Submit",
                                                            style: GoogleFonts.lexend(
                                                                fontSize: 11.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .white)),
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff036163),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                0.9.h))),
                                              ),
                                            )
                                          ],
                                        );
                                      }),
                                    ),
                                  ),
                                )));
                      },
                      child: Container(
                        width: 33.9.w,
                        height: 4.15.h,
                        margin: EdgeInsets.only(left: 3.w),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.9.h),
                            border:
                                Border.all(color: Color(0xffFF5353), width: 1)),
                        child: Text(
                          "Decline",
                          style: GoogleFonts.lexend(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFF5353)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    InkWell(
                      onTap: () async {
                        homeCtrl.changeJobStatus(jobData["id"]);
                      },
                      child: Container(
                          width: 33.9.w,
                          height: 4.15.h,
                          alignment: Alignment.center,
                          child: (homeCtrl.isLoading)
                              ? LoadingAnimationWidget.staggeredDotsWave(
                                  color: Colors.white, size: 24)
                              : Text("Accept",
                                  style: GoogleFonts.lexend(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                          decoration: BoxDecoration(
                              color: Color(0xff036163),
                              borderRadius: BorderRadius.circular(0.9.h))),
                    ),
                  ],
                ),
              SizedBox(
                height: 2.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
