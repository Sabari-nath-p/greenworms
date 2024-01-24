import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/homeScreen/homeScreen.dart';
import 'package:sizer/sizer.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:Column(
        children: [
         Container(
           width: MediaQuery.of(context).size.width,
           height: 33.6.h,
          
           alignment: Alignment.bottomCenter,
           child:Image.asset("assets/images/logo.png") ,
           
         ),
         SizedBox(height: 8.h,),
         Padding(
          padding: EdgeInsets.only(left: 4.h),
           child: Align(
           alignment: Alignment.topLeft,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Phone Number",style: GoogleFonts.lexend(textStyle: TextStyle(color: Color(0xff344054),fontSize: 11.6.sp,fontWeight: FontWeight.w500),)),
                SizedBox(height: 0.9.h,),
              SizedBox(
          width: 84.2.w,
          height: 5.17.h,
           child: TextFormField(
           keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: ("9048514599"),
                           
                          enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(0.9.h),
                            borderSide: BorderSide(color: Color(0xffD0D5DD),width: 0.15.h),
         )
         ,                         ), 
           ),
         ),
         SizedBox(height: 4.w,),
          Text("Password",style: GoogleFonts.lexend(textStyle: TextStyle(color: Color(0xff344054),fontSize: 11.6.sp),)),
                SizedBox(height: 0.9.h,),
              SizedBox(
          width: 84.2.w,
          height: 5.17.h,
           child: TextFormField(
           keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: ("***********"),
                          enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(0.9.h),
                            borderSide: BorderSide(color: Color(0xffD0D5DD),width: 0.15.h),
         )
         ,                         ), 
           ),
         ), SizedBox(height: 7.w,),


              
              
              ],
            )),
         ),
         
      
          Center(
        child: InkWell(
          onTap: () {
            Get.to(() => homeScreen(), transition: Transition.rightToLeft);
          },
          child: Container(
            width: 84.2.w,
            height: 5.17.h,
           alignment: Alignment.center,
            decoration: BoxDecoration(color: Color(0xff036163),borderRadius: BorderRadius.circular(0.9.h)),
            child: Text("Login",style: GoogleFonts.lexend(textStyle: TextStyle(color: Colors.white,fontSize: 13.sp,fontWeight: FontWeight.w500),)),
          ),
        ),
      ),
      Expanded(child: Container()),
      SizedBox(
        height:2.8.h,
        width: 35.5.w,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text("App Version v1",style: GoogleFonts.lexend(textStyle: TextStyle(color: Color(0xff007C58),fontSize: 14.sp,fontWeight: FontWeight.w400),)),
        ),
      ),
      SizedBox(height:0.4.h)
        ],
      )
      
    ));
  }
}
