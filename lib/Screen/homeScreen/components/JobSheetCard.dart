import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class JobSheetCard extends StatelessWidget {
  const JobSheetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91.w,
      height: 36.11.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.2.w),
          ),
          borderRadius: BorderRadius.circular(0.9.h)),
      child: Padding(
         padding: EdgeInsets.fromLTRB(4.17.w, 3.h, 0.w, 0.h),
        child: Column(
        
          children: [
            Row(
              children: [
                SizedBox(
                    width: 1.9.h,
                    height: 1.9.h,
                    child: Image.asset("assets/images/jobid.png")),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Job Id",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
                SizedBox(
                  width: 35.w,
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
                Text(
                  "Pickup Date ",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
                SizedBox(
                  width: 20.w,
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
                Text(
                  "Pickup Item",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
                SizedBox(
                  width: 20.w,
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
                    child: Image.asset("assets/images/quty.png")),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Approx Qty",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
                SizedBox(
                  width: 20.w,
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
                Text(
                  "location",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
                SizedBox(
                  width: 10.w,
                ),
               
              ],
            ),
            //aa
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
            
            Row(
              children: [
                Container(
                    width: 33.9.w,
                    height:4.15.h,
                    margin: EdgeInsets.only(left: 3.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                                
                                borderRadius: BorderRadius.circular(0.9.h),border: Border.all(color: Color(0xffFF5353),width: 1)) ,
                      child: Text("Decline",style: GoogleFonts.lexend(fontSize:11.sp,fontWeight: FontWeight.w500,color: Color(0xffFF5353) ),),
      
      
                ),
                SizedBox(width: 8.w,),
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
                              borderRadius: BorderRadius.circular(0.9.h))
                ),
              ],
            ),
            SizedBox(height: 3,)
          ],
        ),
      ),
    );
  }
}
