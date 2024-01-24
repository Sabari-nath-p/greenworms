import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HMTCard extends StatelessWidget {
  const HMTCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 14.11.h,
      width: 40.78.w,
      child: Stack(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Positioned(
            top: 4.6.w,
            left: 11.57.w,
            child: Image.asset(
              'assets/image/card.png',
              width: 10.38.w,
              height: 4.06.h,
            ),
          ),
          Positioned(
            top: 7.52.h,
            left: 5.52.w,
            child: Container(
              width: 19.73.w,
              height: 2.82.h,
              child: Center(
                child: Text(
                  '100',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.66.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                    color: Color.fromRGBO(0, 5, 5, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
