import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:sizer/sizer.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.only(left: 5.9.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.5.h),
                Row(
                  children: [
                    Container(
                     
                      width:5.5.w ,
                      height: 5.5.w,
                      
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                        Get.back();
                        },
                        child: Icon(Icons.arrow_back_ios_new,size: 5.w,))),
                        SizedBox(width: 2.w,), 
                Text("Change Password",style: GoogleFonts.lexend(fontSize:13.3.sp,fontWeight: FontWeight.w300,color: Colors.black ),)
            ,  
                  ],
                ),
                SizedBox(height: 7.6.h,),
               SizedBox(width:34.5.w ,
               height:2.35.h ,
                child: Text("Current Password",style: GoogleFonts.lexend(fontSize:11.7.sp,fontWeight: FontWeight.w500,color:Color(0xff344054) ),))
            ,  SizedBox(height: 1.h,),
            SizedBox(
               width: 88.2.w,
                        height: 5.17.h,
              child: TextFormField(
                           
                            keyboardType: TextInputType.emailAddress,
                             textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              isDense: true,
                             
                              hintText: ("Anandu"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.9.h),
                                borderSide: BorderSide(
                                    color: Color(0xffD0D5DD), width: 0.15.h),
                              ),
                            ),
                          ),
            ),
             SizedBox(height: 2.h,),
             SizedBox(width:34.5.w ,
               height:2.35.h ,
                child: Text("New Password",style: GoogleFonts.lexend(fontSize:11.7.sp,fontWeight: FontWeight.w500,color:Color(0xff344054) ),))
            ,  SizedBox(height: 1.h,),
            SizedBox(
               width: 88.2.w,
                        height: 5.17.h,
              child: TextFormField(
                           
                            keyboardType: TextInputType.emailAddress,
                             textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              isDense: true,
                             
                              hintText: ("Anandu"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.9.h),
                                borderSide: BorderSide(
                                    color: Color(0xffD0D5DD), width: 0.15.h),
                              ),
                            ),
                          ),
            ),
            SizedBox(height: 2.h,),
             SizedBox(width:35.5.w ,
               height:2.35.h ,
                child: Text("Confirm Password",style: GoogleFonts.lexend(fontSize:11.7.sp,fontWeight: FontWeight.w500,color:Color(0xff344054) ),))
            ,  SizedBox(height: 1.h,),
            SizedBox(
               width: 88.2.w,
                        height: 5.17.h,
              child: TextFormField(
                           
                            keyboardType: TextInputType.emailAddress,
                             textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              isDense: true,
                             
                              hintText: ("Anandu"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.9.h),
                                borderSide: BorderSide(
                                    color: Color(0xffD0D5DD), width: 0.15.h),
                              ),
                            ),
                          ),
            ),
              SizedBox(height: 40.h,),
                  Container(
                  width: 88.2.w,
                  height: 5.17.h,
                  alignment: Alignment.center,
                   decoration: BoxDecoration(
                      color: Color(0xff036163),
                      borderRadius: BorderRadius.circular(0.9.h)),
                  child: Text("Save",
                      style: GoogleFonts.lexend(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(height: 2.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}