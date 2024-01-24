import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});
 List se
  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
      
        Align(
          alignment: Alignment.topLeft,
          child:Padding(padding: EdgeInsets.fromLTRB(5.w, 3.52.h, 0, 0),
          child: Container(
            width:92.05.w ,
            height:5.8.h ,
            decoration: BoxDecoration(border: Border.all(color: Color(0xff036163),width: 0.6.w,),borderRadius:BorderRadius.circular(0.9.h) ),
          child: Row(
            children: [
             Padding(
               padding:  EdgeInsets.only(left: 4.w),
               child: Container(
                width: 24.7.w,
                height: 3.52.h,
                alignment: Alignment.center,
                child: Text("Assigned",style: GoogleFonts.lexend (fontSize: 10.sp,fontWeight: FontWeight.w500,color: Colors.white)),
                decoration: BoxDecoration(color: Color(0xff036163),borderRadius:BorderRadius.circular(0.9.h))),
             ),
            
             Padding(padding: EdgeInsets.only(left: 8.w),
             child: Text("In Progress",style: GoogleFonts.lexend (fontSize: 10.sp,fontWeight: FontWeight.w500,color: Color(0xff036163))),
               
         ), Padding(padding: EdgeInsets.only(left: 8.w),
             child: Text("Completed",style: GoogleFonts.lexend (fontSize: 10.sp,fontWeight: FontWeight.w500,color: Color(0xff036163))),
               
         ),


            ], ),
          
          ),
          )
          
        ),
         
      ],
    );
  }
}
 