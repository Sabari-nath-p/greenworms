import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HMTsmall
 extends StatelessWidget {
  const HMTsmall
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.94.w),
        
        color: Colors.white,
      ),
      height: 14.11.h,
      width: 40.78. w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Container(
            margin: EdgeInsets.only(top: 2.23.h, left: 3.42.w),
            child: Image.asset(
              'assets/image/smallcard.png',
              width: 10.38.w,
              height: 4.06.h,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 7.29, left: 4.73.w),
            width: 32.89.w,
            height: 2.8.h,
            child: Text(
              '1000 Ton',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 16.66.sp,
                fontWeight: FontWeight.w500,
                
                letterSpacing: 0,
                
                color: Color.fromRGBO(0,5,5,1)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3.2, left: 4.73.w),
            width: 30.3.w,
            height: 1.88.h,
            decoration: BoxDecoration(
              
            ),
            child: Text(
              'Total Weight Carried',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 9.16.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.005,
                color: Color.fromRGBO(164,182,177,1),
              ),
            ),
          ),
        ],
    ),
    );
    
  }
}