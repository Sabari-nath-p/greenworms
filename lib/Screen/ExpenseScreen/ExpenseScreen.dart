import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 4.4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.7.w,),
            Text("Regular Expense",style: GoogleFonts.lexend(fontSize: 16.6.sp,fontWeight: FontWeight.w400,color: Colors.black),)
            ,SizedBox(height: 3.5.h,),
              Container(
                width:89.4.w ,
                height: 7.3.h,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.black.withOpacity(0.05))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.w,),
                   Container(
                    width:10.w ,
                    height: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xffE6FAFD)),
                    child: SizedBox(
                      width: 3.w,
                      height: 3.w,
                      child: Image.asset("assets/images/fuel.png",)) ,
                   ),
                    SizedBox(width: 3.w,),
                   Text("Fuel cost",style: GoogleFonts.lexend(fontSize: 11.3.sp,fontWeight: FontWeight.w500,color: Color(0xff036163)),),
                   Expanded(child: Container()),
                   SizedBox(
                    width: 12.w,
                    height: 12.w,
                    child: Image.asset("assets/images/arrowright.png"))
                  ],
                ),
              ),
              SizedBox(height: 1.h,),
              Container(
                width:89.4.w ,
                height: 7.3.h,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.black.withOpacity(0.05))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.w,),
                   Container(
                    width:10.w ,
                    height: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xffE6FAFD)),
                    child: SizedBox(
                      width: 3.w,
                      height: 3.w,
                      child: Image.asset("assets/images/maintenance.png",)) ,
                   ),
                    SizedBox(width: 3.w,),
                   Text("Maintenance",style: GoogleFonts.lexend(fontSize: 11.3.sp,fontWeight: FontWeight.w500,color: Color(0xff036163)),),
                  //  Expanded(child: Container()),
                  //  SizedBox(
                  //   width: 12.w,
                  //   height: 12.w,
                  //   child: Image.asset("assets/images/arrowright.png"))
                  ],
                ),
              ),
              SizedBox(height: 3.5.h,),
               Text("Annual Expense",style: GoogleFonts.lexend(fontSize: 16.6.sp,fontWeight: FontWeight.w400,color: Colors.black),)
            ,SizedBox(height: 3.5.h,),
              Container(
                width:89.4.w ,
                height: 7.3.h,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.black.withOpacity(0.05))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.w,),
                   Container(
                    width:10.w ,
                    height: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xffE6FAFD)),
                    child: SizedBox(
                      width: 3.w,
                      height: 3.w,
                      child: Image.asset("assets/images/insurance.png",)) ,
                   ),
                    SizedBox(width: 3.w,),
                   Text("Insurance",style: GoogleFonts.lexend(fontSize: 11.3.sp,fontWeight: FontWeight.w500,color: Color(0xff036163)),),
                   
                  ],
                ),
              ),
               SizedBox(height: 1.h,),
               Container(
                width:89.4.w ,
                height: 7.3.h,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.black.withOpacity(0.05))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.w,),
                   Container(
                    width:10.w ,
                    height: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xffE6FAFD)),
                    child: SizedBox(
                      width: 3.w,
                      height: 3.w,
                      child: Image.asset("assets/images/gps.png",)) ,
                   ),
                    SizedBox(width: 3.w,),
                   Text("Tax",style: GoogleFonts.lexend(fontSize: 11.3.sp,fontWeight: FontWeight.w500,color: Color(0xff036163)),),
                   
                  ],
                ),
              ),
               SizedBox(height: 1.h,),
               Container(
                width:89.4.w ,
                height: 7.3.h,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.black.withOpacity(0.05))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.w,),
                   Container(
                    width:10.w ,
                    height: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xffE6FAFD)),
                    child: SizedBox(
                      width: 3.w,
                      height: 3.w,
                      child: Image.asset("assets/images/fitness.png",)) ,
                   ),
                    SizedBox(width: 3.w,),
                   Text("Fitness",style: GoogleFonts.lexend(fontSize: 11.3.sp,fontWeight: FontWeight.w500,color: Color(0xff036163)),),
                   
                  ],
                ),
              ),
               SizedBox(height: 1.h,),
               Container(
                width:89.4.w ,
                height: 7.3.h,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.black.withOpacity(0.05))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.w,),
                   Container(
                    width:10.w ,
                    height: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xffE6FAFD)),
                    child: SizedBox(
                      width: 3.w,
                      height: 3.w,
                      child: Image.asset("assets/images/permit.png",)) ,
                   ),
                    SizedBox(width: 3.w,),
                   Text("Permit",style: GoogleFonts.lexend(fontSize: 11.3.sp,fontWeight: FontWeight.w500,color: Color(0xff036163)),),
                   
                  ],
                ),
              ),
               SizedBox(height: 1.h,),
               Container(
                width:89.4.w ,
                height: 7.3.h,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.black.withOpacity(0.05))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.w,),
                   Container(
                    width:10.w ,
                    height: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Color(0xffE6FAFD)),
                    child: SizedBox(
                      width: 3.w,
                      height: 3.w,
                      child: Image.asset("assets/images/gps.png",)) ,
                   ),
                    SizedBox(width: 3.w,),
                   Text("GPS",style: GoogleFonts.lexend(fontSize: 11.3.sp,fontWeight: FontWeight.w500,color: Color(0xff036163)),),
                   
                  ],
                ),
              ),
      
          ],
        ),
      ),
    );
  }
}