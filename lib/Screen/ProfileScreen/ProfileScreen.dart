import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 6.h,),
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
            SizedBox(height: 6.h,),
            Container(
              padding: EdgeInsets.fromLTRB(8.w, 2.w, 8.w, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Name",style: GoogleFonts.lexend(fontSize: 11.sp,color: Color(0xff036163),fontWeight: FontWeight.w500),),
                      Expanded(child: Container()),
                      Text("Anandu",style: GoogleFonts.lexend(fontSize: 12.sp,color: Color(0xff053532),fontWeight: FontWeight.w600),)
                    ],
                  ),
                  SizedBox(height: 6.w,),
                   Row(
                    children: [
                      Text("Mobile Number",style: GoogleFonts.lexend(fontSize: 11.sp,color: Color(0xff036163),fontWeight: FontWeight.w500),),
                      Expanded(child: Container()),
                      Text("+91 9048514599",style: GoogleFonts.lexend(fontSize: 12.sp,color: Color(0xff053532),fontWeight: FontWeight.w600),)
                    ],
                  ),SizedBox(height: 6.w,),
                   Row(
                    children: [
                      Text("Email ID",style: GoogleFonts.lexend(fontSize: 11.sp,color: Color(0xff036163),fontWeight: FontWeight.w500),),
                      Expanded(child: Container()),
                      Text("anandusuresh001@gnail.com",style: GoogleFonts.lexend(fontSize: 12.sp,color: Color(0xff053532),fontWeight: FontWeight.w600),),
                      
                    ],
                  ),
                   SizedBox(height: 14.w,),
                   Row(
                    children: [
                      Icon(Icons.lock,size: 6.w,color: Color(0xff036163),),
                      SizedBox(width: 3.w,),
                      Text("Change Password",style: GoogleFonts.lexend(fontSize: 11.sp,color: Color(0xff036163),fontWeight: FontWeight.w500),),
                    ],
                   )
                 

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}