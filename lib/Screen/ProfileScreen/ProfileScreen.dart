import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/ProfileScreen/ChangePassword.dart';
import 'package:greenworms/Screen/ProfileScreen/Controller.dart';
import 'package:greenworms/Screen/ProfileScreen/EditProfileScreen.dart';
import 'package:http/http.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileController profileCtrl = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<ProfileController>(builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 6.h,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Get.to(() => EditProfileScreen());
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/image/profile.png',
                      width: 10.h,
                      height: 10.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black.withOpacity(0.09),
                )),
                padding: EdgeInsets.fromLTRB(8.w, 4.w, 8.w, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name",
                          style: GoogleFonts.lexend(
                              fontSize: 11.sp,
                              color: Color(0xff036163),
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: Container()),
                        Text(
                          profileCtrl.name,
                          style: GoogleFonts.lexend(
                              fontSize: 12.sp,
                              color: Color(0xff053532),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Container(
                      width: 100.w,
                      height: 0.01.h,
                      color: Colors.black.withOpacity(0.2.w),
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Row(
                      children: [
                        Text(
                          "Mobile Number",
                          style: GoogleFonts.lexend(
                              fontSize: 11.sp,
                              color: Color(0xff036163),
                              fontWeight: FontWeight.w400),
                        ),
                        Expanded(child: Container()),
                        Text(
                          profileCtrl.Phoneno,
                          style: GoogleFonts.lexend(
                              fontSize: 12.sp,
                              color: Color(0xff053532),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Container(
                      width: 100.w,
                      height: 0.01.h,
                      color: Colors.black.withOpacity(0.2.w),
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email ID",
                          style: GoogleFonts.lexend(
                              fontSize: 11.sp,
                              color: Color(0xff036163),
                              fontWeight: FontWeight.w400),
                        ),
                        Expanded(child: Container()),
                        Text(
                          profileCtrl.mailid,
                          style: GoogleFonts.lexend(
                              fontSize: 12.sp,
                              color: Color(0xff053532),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.w,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.lock,
                          size: 6.w,
                          color: Color(0xff036163),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => ChangePasswordScreen());
                          },
                          child: Text(
                            "Change Password",
                            style: GoogleFonts.lexend(
                                fontSize: 11.sp,
                                color: Color(0xff036163),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
