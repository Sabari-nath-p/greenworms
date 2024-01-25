import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class weightScreen extends StatelessWidget {
  const weightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Container(
              width: 6.57.w, 
              height: 2.94.h, 
             margin: EdgeInsets.only(
                top: 8.5.h, 
                 left: 5.2.w, 
              ),
              child: Image.asset('assets/image/angle.png'),
            ),
            SizedBox(height: 2.h,),
            Container(
              width: 32.w,
              height:3.h,

              margin: EdgeInsets.only(
                
               
                left: 7.4.w,
              ),
              child: Text(
                'Enter Weight',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 16.66.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                
                  letterSpacing: -0.01.w
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

          
       







      

