import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/AddExpenseScreen/components/Summarycard.dart';
import 'package:sizer/sizer.dart';

class FuelCostScreen extends StatelessWidget {
  const FuelCostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 5.9.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(height: 5.5.h),
                Row(
                  children: [
                    
                    
                    Container(
                        width: 2.94.h,
                        height: 2.94.h,
                        alignment: Alignment.topLeft,
                        child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              size: 4.2.w,
                            ),
                            ),
                            ),
                              SizedBox(
                      width: 2.36.w,
                    ),
                    Text(
                      "Fuel cost",
                      style: GoogleFonts.lexend(
                          fontSize: 13.33.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),

                  ],
                ),
               
            
                
                SizedBox(height: 5.17.h,),
              Summarycard(),
               Padding(
                  padding:  EdgeInsets.only(top:58.h,left: 75.89.w ),
                  child: Container(
                                width: 7.05.h,
                                height: 7.05.h,
                                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(3, 97, 99, 1),
                                ),
                                child: ClipOval(
                  child: SizedBox(
                    child: InkWell(
                            onTap: () {
                               showDialog(
                            context: context,
                            builder: (context) => Material(
                              color: Colors.transparent,
                             
                               
                               
                                    child:
                                    
                                    
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 90.26.w,
                                        height: 58.h,
                                        
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                                 child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                 
                                                     SizedBox(
                                                      height: 3.h,
                                                      width: 3.15.w,
                                                    
                                                     ),
                                                   Padding(
                                                     padding: EdgeInsets.only(left:3.15.w),
                                                     child: Text("Date",
                                                                                                     style: GoogleFonts.lexend(
                                                                                fontSize: 11.66.sp,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Colors.black
                                                                                                    ),
                                                                                                     ),
                                                   ),
                                                 SizedBox(height: 1.5.h,),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                                   width: 84.5.w,
                          height: 5.17.h,
                                  child: TextFormField(
                             
                              keyboardType: TextInputType.datetime,
                               textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                isDense: true,
                              
                                hintText: ("12-05-2024"),
                                //contentPadding: EdgeInsets.only(left:3.68.w,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.9.h),
                                  borderSide: BorderSide(
                                      color: Color(0xffD0D5DD), width: 0.15.h),
                                ),
                              ),
                            ),
                                ),

                  ),
                  SizedBox(
                                                      height: 1.8.h,
                                                    
                                                    
                                                     ),
                                                   Padding(
                                                     padding: EdgeInsets.only(left:3.15.w),
                                                     child: Text("Invoice Amount",
                                                                                                     style: GoogleFonts.lexend(
                                                                                fontSize: 11.66.sp,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Colors.black
                                                                                                    ),
                                                                                                     ),
                                                   ),

                                                  SizedBox(height: 1.h,),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                                   width: 84.5.w,
                          height: 6.3.h,
                                  child: TextFormField(
                             
                              keyboardType: TextInputType.datetime,
                               textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                isDense: true,
                              
                                hintText: ("10000"),
                                //contentPadding: EdgeInsets.only(left:3.68.w,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.9.h),
                                  borderSide: BorderSide(
                                      color: Color(0xffD0D5DD), width: 0.15.h),
                                ),
                              ),
                            ),
                                ),

                  ),
                                            SizedBox(
                                                      height: 2.h,
                                                    
                                                    
                                                     ),
                                                   Padding(
                                                     padding: EdgeInsets.only(left:3.15.w),
                                                     child: Text("Upload image",
                                                                                                     style: GoogleFonts.lexend(
                                                                                fontSize: 11.66.sp,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Colors.black
                                                                                                    ),
                                                                                                     ),
                                                   ),   
                                                      SizedBox(
                                                      height: 2.h,
                                                      width: .5.w,
                                                    
                                                    
                                                     ),  
                                                     Align(
                                                      alignment:Alignment.topCenter,
                                                     child:SizedBox(
                                                      height: 12.84.h,
                                                      width:88.w ,
                                                      child:Image.asset("assets/image/frame.png")
                                                    
                                                     ),   
                                                     ),
                  SizedBox(height: 5.h),
                   Align(
                    alignment:Alignment.topCenter , 
                    child:InkWell(
                      onTap:(){
                        Get.back
                      ();
                      },                        
                 child: Container(
                  width: 84.2.w,
                  height: 5.17.h,
                  alignment: Alignment.center,
                   decoration: BoxDecoration(
                      color: Color(0xff036163),
                      borderRadius: BorderRadius.circular(0.9.h)),
                       
                      
                  child: Text("Submit",
                      style: GoogleFonts.lexend(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 13.33.sp,
                            fontWeight: FontWeight.w600),
                      )),
                       
                ),
                    ),
                 ),
                   
                                                 ],
                                      
                                      
                                      
                                      
                                                 ),
                                      
                                      
                                      
                                      
                                      
                                      ),
                                    ),
                                 
                            
                            
                            ),
                        
                            );
                            
                            
                            },
                    child: Icon(Icons.add,
                    size: 9.5.w,
                    color: Color.fromRGBO(255, 255, 255, 1)
                     ),
                    ),
                     ),
                  ),
                                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
             










