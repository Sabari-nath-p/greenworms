import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HMTitle extends StatelessWidget {
  const HMTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, 
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        ClipOval(
          child: Image.asset(
            'assets/image/profile.png',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 2.36.w),
      Container(
          width: 36.58.w,
          height: 3.52.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: GoogleFonts.lexend(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 1),
                letterSpacing: 0,
                

              ),
            ),
            Text(
              'Anandu',
              style: GoogleFonts.lexend(
                fontSize: 18.33.sp,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 1),
                letterSpacing: 0,
                
              ),
            ),
          ],
        ),
      ),
        Text(
          ',',
          style: GoogleFonts.ubuntu(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(255, 255, 255, 1),
            letterSpacing: 0,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            width: 20,
            height: 20,
            child: Image.asset(
              'assets/image/bell.png',
              width: 20,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}