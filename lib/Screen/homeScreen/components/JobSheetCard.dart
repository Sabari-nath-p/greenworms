import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class JobSheetCard extends StatelessWidget {
  int JobStatus;
  JobSheetCard({super.key, required this.JobStatus});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91.w,
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff007C58).withOpacity(0.02.w),
            
          ),
          borderRadius: BorderRadius.circular(0.9.h)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(4.17.w, 1.h, 0.w, 0.h),
        child: 
        Column(
          children: [
            if (JobStatus == 1) Align(
              alignment: Alignment.topLeft,
              child: Container(
                width:24.47.w ,
                height:2.5.h ,
                decoration: BoxDecoration(
                            color: Color(0xff036163).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5.8.h)) ,
                            child: Row(
                              children: [
                                SizedBox(width: 2.w,),
                                Container(
                                  width: 1.5.h,
                                  height: 1.5.h,
                                  decoration:BoxDecoration(
                            color: Color(0xff036163),
                            borderRadius: BorderRadius.circular(25.h))  ,
                                ),
                                SizedBox(width: 1.w,),
                                SizedBox(
                                  width:17.w ,
                                  child: Text("In Progress",
                                                          style: GoogleFonts.lexend(
                                                              fontSize: 8.33.sp,
                                                              fontWeight: FontWeight.w500,
                                                              color:Color(0xff036163) )),
                                ),
                              ],
                            ),
              ),
            ),
            SizedBox(height: 2.h,),
            Row(
              children: [
                SizedBox(
                    width: 1.9.h,
                    height: 1.9.h,
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
                  "#001",
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
                    width: 1.9.h,
                    height: 1.9.h,
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
                  "03-FEB-2024",
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
                    width: 1.9.h,
                    height: 1.9.h,
                    child: Image.asset("assets/images/item.png")),
                SizedBox(
                  width: 2.w,
                ),
                SizedBox(
                   
                  width:39.4 .w,
                
                  child: Text(
                    "Pickup Item",
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff6A6A6A)),
                  ),
                ),
                
                Text(
                  "MIXED WASTE",
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
                    width: 1.9.h,
                    height: 1.9.h,
                    child: Image.asset("assets/images/quantity.png")),
                SizedBox(
                  width: 2.w,
                ),
                SizedBox(
                     width:39.4 .w,
                  child: Text(
                    "Approx Qty",
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff6A6A6A)),
                  ),
                ),
               
                Text(
                  "1000 KG",
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
                    width: 1.9.h,
                    height: 1.9.h,
                    child: Image.asset("assets/images/loc.png")),
                SizedBox(
                  width: 3.w,
                ),
                SizedBox(
                     width:39.4 .w,
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
            SizedBox(height: 1.h,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Logidots Technoogies,Atomic Building Kazhakootam Tvm",
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
                  Container(
                    width: 33.9.w,
                    height: 4.15.h,
                    margin: EdgeInsets.only(left: 3.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.9.h),
                        border: Border.all(color: Color(0xffFF5353), width: 1)),
                    child: Text(
                      "Decline",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFF5353)),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                      width: 33.9.w,
                      height: 4.15.h,
                      alignment: Alignment.center,
                      child: Text("Accept",
                          style: GoogleFonts.lexend(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      decoration: BoxDecoration(
                          color: Color(0xff036163),
                          borderRadius: BorderRadius.circular(0.9.h))),
                ],
              ),
            SizedBox(
              height: 2.h,
            )
          ],
        ),
      ),
    );
  }
}
