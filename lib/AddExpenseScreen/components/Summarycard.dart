import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Summarycard extends StatelessWidget {
  const Summarycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88.w,
      height: 14.82.h,
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only( left: 1.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        border: Border.all(
          color: Color.fromRGBO(243, 244, 246, 1)),
        
      ),
      child: 
        
                 Padding(
          padding: EdgeInsets.only(top:2.h ),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children:[
                          
                            SizedBox(
                              width: 2.w,
                            ),
                          
                              //top: 5,
                            Container(
                              width: 3.h,
                              height: 3.h,
                              
                              child: Image.asset("assets/image/tickbox.png"),
                              ),
                              SizedBox(
                              width: 2.28.w,
                            ),
                            SizedBox(
                              
                              child: Text("12-05-2024",
                                  style: GoogleFonts.lexend(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000))),
                            ),
                                
                                
                             SizedBox(
                              width: 3.42.w,
                            ),
                          
                              Stack( 
                                children:[
                           
                                Container(
                              width: 3.h,
                              height: 3.h,
                              
                              child: Image.asset("assets/image/rupeebox.png"),
                              
                              ),
                              Positioned(
                                top: 6,
                                left:6,
                                child: 
                               Container(
                              width: 1.97.w,
                              height: 1.17.h,
                              padding:EdgeInsets.all(.5),
                              child: Image.asset("assets/image/rupee.png"),
                              ),
                              ),
                          ],
                            ),
                        SizedBox(
                              width: 2.28.w,
                            ),
                            SizedBox(
                              
                              child: Text("2500",
                                  style: GoogleFonts.lexend(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000))),
                            ),    
                        
                                
                                              
                        ],
                                  ),
                                   SizedBox(height:2.19.h),

                                  Row(
                                    children: [
                                      Padding(
                                        padding:EdgeInsets.only(left:3.42.w),
                                        child: Container(
                                          height:5.88.h ,
                                          width:5.88.h,
                                        
                                          child: Image.asset("assets/image/cardimage.png"),
                                          
                                        ),
                                      ),
                                        SizedBox(width:1.8.w),

                                  Padding(
                                    padding:EdgeInsets.only(left:3.42.w),
                                    child: Container(
                                      height:5.88.h ,
                                      width:5.88.h,
                                    
                                      child: Image.asset("assets/image/cardimage.png"),
                                      
                                    ),
                                  ),
                                   SizedBox(width:1.8.w),

                                  Padding(
                                    padding:EdgeInsets.only(left:3.42.w),
                                    child: Container(
                                      height:5.88.h ,
                                      width:5.88.h,
                                    
                                      child: Image.asset("assets/image/cardimage.png"),
                                      
                                    ),
                                  ),
                                   SizedBox(width:1.8.w),

                                  Padding(
                                    padding:EdgeInsets.only(left:3.42.w),
                                    child: Container(
                                      height:5.88.h ,
                                      width:5.88.h,
                                    
                                      child: Image.asset("assets/image/cardimage.png"),
                                      
                                    ),
                                  ),
                                   SizedBox(width:1.8.w),

                                  Padding(
                                    padding:EdgeInsets.only(left:3.42.w),
                                    child: Container(
                                      height:5.88.h ,
                                      width:5.88.h,
                                    
                                      child: Image.asset("assets/image/cardimage.png"),
                                      
                                    ),
                                  ),
                                    ],
                                  ),
                                 
                                  
                      ],
                    ),
                    
    
                     
                   ),  
                    );
                   
                    
      
  
    
  
     
    
  }
  

}
  