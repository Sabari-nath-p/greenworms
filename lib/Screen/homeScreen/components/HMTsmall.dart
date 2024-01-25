import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HMTsmall
 extends StatelessWidget {
  const HMTsmall
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.94.w),
        
        color: Colors.white,
      ),
      height: 14.11.h,
      width: 40.78. w,
      ),
      Column(
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


    Positioned(
          top: 0.82.h,
          left: 23.6.w,
          
          child: Container(
            width: 15.26.w,
            height: 2.82.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.69.w),
             color: Color.fromRGBO(255, 243, 243, 1),

), 
             child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(1.6.w, .54.h, 0, 0),
                    width: 3.w,
                    height: 3.h,
                    decoration: BoxDecoration(
                      
                    ),
                    child: Image.asset('assets/image/down.png'),
                  ),
                  
                ],
                ),
              
            ),
          ),
          Positioned(
          top: 1.25.h,
          left: 28.85.w,
          child: Container(
            width: 6.84.w,
            height: 1.70.h,
            child: Text(
              '16',
              style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 9.12.sp,
                fontWeight: FontWeight.w400,
                
                letterSpacing: -0.02,
                
                color: Color.fromRGBO(255, 81, 81, 1),
              ),
            ),
          ),
        ),
        
        Positioned(
          top: 1.25.h,
          left:32.5.w,
          child: Container(
            width: 6.84.w,
            height: 1.70.h,
            child: Text(
              '.5',
              style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 9.12.sp,
                fontWeight: FontWeight.w400,
               
                letterSpacing: -0.02,
       
                color: Color.fromRGBO(255, 81, 81, 1),
              ),
            ),
          ),
        ),
        
        Positioned(
          top: 1.25.h,
          left :35.5.w,
          
          child: Container(
            width: 6.84.w,
            height: 1.70.h,
            child: Text(
              '%',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 9.12.sp,
                
                letterSpacing: -0.02,
                
                color: Color.fromRGBO(255, 81, 81, 1),
)
              ),
            ),
          ),
        
      ],
    );
  }
}

    