import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class JobSheetCard extends StatelessWidget {
  const JobSheetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width:91 .w,
      height: 36.11.h,
      decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.2.w),),borderRadius: BorderRadius.circular(0.9.h)),
    child: Column(
      children: [
        Padding(padding: EdgeInsets.fromLTRB(4.17.w, 3.h, 0.w, 0.h),
         child: Row(
          children: [
             SizedBox
             (width:1.9.h ,
             height: 1.9.h,
              child: Image.asset("assets/images/jobid.png")),
              SizedBox(width: 2.w,),
              Text("Job Id",style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff6A6A6A) ),),
             SizedBox(width: 35.w,),
              Text("#001",style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff000000) ),),
              Expanded(child: Container()),
          ],
         ),
),
 SizedBox(height: 3.w,),
                  Container(
                    width: 80.w,
                    height:0.01.h,
                    color: Colors.black.withOpacity(0.2.w),
                  ),
                 SizedBox(height: 3.w,),
            Padding(padding: EdgeInsets.fromLTRB(4.17.w, 1.w, 0.w, 0.h),
         child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox
             (width:1.9.h ,
             height: 1.9.h,
              child: Image.asset("assets/images/jobid.png")),
              SizedBox(width: 2.w,),
              Text("Pickup Date ",style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff6A6A6A) ),),
             SizedBox(width: 20.w,),
              Text("03-FEB-2024",textAlign: TextAlign.end,
              style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff000000) ),),
               Expanded(child: Container()),
          ],
         ),
),
 SizedBox(height: 3.w,),
                  Container(
                    width: 80.w,
                    height:0.01.h,
                    color: Colors.black.withOpacity(0.2.w),
                  ),
                 SizedBox(height: 3.w,),
                 Padding(padding: EdgeInsets.fromLTRB(4.17.w, 1.h, 0.w, 0.h),
         child: Row(
          children: [
             SizedBox
             (width:1.9.h ,
             height: 1.9.h,
              child: Image.asset("assets/images/item.png")),
              SizedBox(width: 2.w,),
              Text("Pickup Item",style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff6A6A6A) ),),
             SizedBox(width: 20.w,),
              Text("MIXED WASTE",style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff000000) ),),
               Expanded(child: Container()),
          ],
         ),
),
 SizedBox(height: 3.w,),
                  Container(
                    width: 80.w,
                    height:0.01.h,
                    color: Colors.black.withOpacity(0.2.w),
                  ),
                 SizedBox(height: 3.w,),
                 Padding(padding: EdgeInsets.fromLTRB(4.17.w, 1.h, 0.w, 0.h),
         child: Row(
          children: [
             SizedBox
             (width:1.9.h ,
             height: 1.9.h,
              child: Image.asset("assets/images/quty.png")),
              SizedBox(width: 2.w,),
              Text("Approx Qty",style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff6A6A6A) ),),
             SizedBox(width: 20.w,),
              Text("1000 KG",style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff000000) ),),
              Expanded(child: Container()),
          ],
         ),
),
 SizedBox(height: 3.w,),
                  Container(
                    width: 80.w,
                    height:0.01.h,
                    color: Colors.black.withOpacity(0.2.w),
                  ),
                 SizedBox(height: 3.w,),
                 Padding(padding: EdgeInsets.fromLTRB(4.17.w, 1.h, 0.w, 0.h),
         child: Row(
          children: [
             SizedBox
             (width:1.9.h ,
             height: 1.9.h,
              child: Image.asset("assets/images/loc.png")),
              SizedBox(width: 2.w,),
              Text("location",style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff6A6A6A) ),),
                Text("Logidots Technoogies,Atomic Building Kazhakootam Tvm",textAlign: TextAlign.start,style: GoogleFonts.lexend(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff000000) ),),
            
              
          ],
         ),
),
 
                 SizedBox(height: 3.w,),     
      ],
    ),
   
    );
  }
}
