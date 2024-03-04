import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/ExpenseScreen/controller.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class AddExpensePage extends StatefulWidget {
  String type;
  AddExpensePage({super.key, required this.type});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  TextEditingController date = TextEditingController();
  TextEditingController amountText = TextEditingController();
  List<XFile> ImageList = [];
  bool Loading = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 90.26.w,
          height: 58.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3.h,
                  width: 3.15.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.15.w),
                  child: Text(
                    "Date",
                    style: GoogleFonts.lexend(
                        fontSize: 11.66.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 84.5.w,
                    height: 5.17.h,
                    child: InkWell(
                      onTap: () async {
                        DateTime? dt = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2024),
                            lastDate: DateTime.now());

                        if (dt != null) {
                          date.text = DateFormat("y-MM-dd").format(dt);
                          setState(() {});
                        }
                      },
                      child: TextFormField(
                        controller: date,
                        keyboardType: TextInputType.datetime,
                        textAlignVertical: TextAlignVertical.center,
                        enabled: false,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: ("Date"),
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
                ),
                SizedBox(
                  height: 1.8.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.15.w),
                  child: Text(
                    "Invoice Amount",
                    style: GoogleFonts.lexend(
                        fontSize: 11.66.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 84.5.w,
                    height: 6.3.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: amountText,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isDense: true,

                        hintText: ("Enter Amount"),
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
                  padding: EdgeInsets.only(left: 3.15.w),
                  child: Text(
                    "Upload image",
                    style: GoogleFonts.lexend(
                        fontSize: 11.66.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                  width: .5.w,
                ),
                InkWell(
                  onTap: () async {
                    final ImagePicker picker = ImagePicker();
// Pick an image.
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.gallery);

                    if (image != null) {
                      ImageList.add(image);
                      setState(() {});
                    }
                  },
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        height: 12.84.h,
                        width: 88.w,
                        child: Image.asset("assets/image/frame.png")),
                  ),
                ),
                SizedBox(height: 2.h),
                for (var data in ImageList)
                  InkWell(
                    onTap: () {
                      ImageList.remove(data);
                      setState(() {});
                    },
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                        child: Image.asset('assets/image/imagecard.png')),
                  ),
                SizedBox(height: 2.h),
                Align(
                  alignment: Alignment.topCenter,
                  child: InkWell(
                    onTap: () async {
                      if (ImageList.length > 0 &&
                          date.text.isNotEmpty &&
                          amountText.text.isNotEmpty) uploadImage();
                    },
                    child: Container(
                      width: 84.2.w,
                      height: 5.17.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff036163),
                          borderRadius: BorderRadius.circular(0.9.h)),
                      child: (Loading)
                          ? LoadingAnimationWidget.staggeredDotsWave(
                              color: Colors.white, size: 24)
                          : Text("Submit",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.33.sp,
                                    fontWeight: FontWeight.w600),
                              )),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  uploadImage() async {
    ExpenseScreenController expCtrl = Get.put(ExpenseScreenController());
    Loading = true;
    setState(() {});
    print("image_01");

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${expCtrl.token}'
    };

    var request = http.MultipartRequest(
        'POST', Uri.parse(baseUrl + 'image-upload/upload-multiple'));

    for (var data in ImageList)
      request.files.add(await http.MultipartFile.fromPath('files', data.path));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    String temp = await response.stream.bytesToString();
    print(temp);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = json.decode(temp);
      List tempImage = [];
      for (var data in data["data"]) {
        tempImage.add(data["key"]);
      }
      uploadData(tempImage);
    } else {
      print(response.statusCode);

      print("image_03");
    }
  }

  uploadData(List tempImage) async {
    ExpenseScreenController expCtrl = Get.put(ExpenseScreenController());

    final Response = await http.post(
        Uri.parse(baseUrl + "driver-expense?driver_id=${expCtrl.id}"),
        body: json.encode({
          "user_id": expCtrl.id,
          "type": widget.type,
          "date": DateTime.parse(date.text).toString(),
          "amount": double.parse(amountText.text.toString())
          //  "expiry_date": "2022-01-01"
        }),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${expCtrl.token}'
        });
    print(Response.body);
    print(Response.statusCode);
    if (Response.statusCode == 201) {
      var js = json.decode(Response.body);
      addImagetoExpense(js["data"]["id"].toString(), tempImage);
    }
  }

  addImagetoExpense(String eventId, List images) async {
    ExpenseScreenController expCtrl = Get.put(ExpenseScreenController());
    final Response = await http.post(
        Uri.parse(baseUrl + "driver-expense/$eventId/driver-expense-image"),
        body: json.encode({
          "images": images
          //  "expiry_date": "2022-01-01"
        }),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${expCtrl.token}'
        });
    print(Response.body);
    print(Response.statusCode);
    if (Response.statusCode == 201) {
      var js = json.decode(Response.body);
      expCtrl.fetchExpense();
      expCtrl.update();
      Get.back();
    }
  }
}
