import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:5.5.h),
          Padding(
             padding: EdgeInsets.only(left: 5.9.w),
            child: Row(
              children: [
                Container(
                  width:5.5.w,
                  height: 5.5.w,
                  alignment: Alignment.topCenter,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios_new,size: 5.w,)),
                  
                ),
                 SizedBox(width: 2.w,), 
                Text(" Profile Edit",style: GoogleFonts.lexend(fontSize:13.3.sp,fontWeight: FontWeight.w300,color: Colors.black ),)
            ,  
              ],
            ),
          ),
          SizedBox(height:7.1.h),
          Align(
            alignment: Alignment.center,
            child: ClipOval(
                  child: Image.asset(
                    'assets/image/profile.png',
                     width: 10.h,
                     height: 10.h,
                    fit: BoxFit.cover,
                  ),
                ),
          ),
           SizedBox(height: 4 .h,),
          Padding(
            padding: EdgeInsets.only(left: 5.9.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(width:34.5.w ,
               height:2.35.h ,
                child: Text("Name",style: GoogleFonts.lexend(fontSize:11.7.sp,fontWeight: FontWeight.w500,color:Color(0xff344054) ),))
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
                child: Text("Mobile Number",style: GoogleFonts.lexend(fontSize:11.7.sp,fontWeight: FontWeight.w500,color:Color(0xff344054) ),))
            ,  SizedBox(height: 1.h,),
            SizedBox(
               width: 88.2.w,
                        height: 5.17.h,
              child: TextFormField(
                           
                            keyboardType: TextInputType.emailAddress,
                             textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              isDense: true,
                             
                              hintText: ("9048514599"),
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
                child: Text("Email ID",style: GoogleFonts.lexend(fontSize:11.7.sp,fontWeight: FontWeight.w500,color:Color(0xff344054) ),))
            ,  SizedBox(height: 1.h,),
            SizedBox(
               width: 88.2.w,
                        height: 5.17.h,
              child: TextFormField(
                           
                            keyboardType: TextInputType.emailAddress,
                             textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              isDense: true,
                             
                              hintText: ("anandhusuresh001@gmail.com"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.9.h),
                                borderSide: BorderSide(
                                    color: Color(0xffD0D5DD), width: 0.15.h),
                              ),
                            ),
                          ),
            ),
              SizedBox(height: 30.h,),
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
          )
        ],
      ),
    );
  }
}