import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_MechanicDetailspage extends StatefulWidget {
  const User_MechanicDetailspage({super.key});

  @override
  State<User_MechanicDetailspage> createState() =>
      _User_MechanicDetailspageState();
}

class _User_MechanicDetailspageState extends State<User_MechanicDetailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0XFFCFE2FF),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          "Needed service",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20.sp),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150.h,
                width: 150.w,
                decoration: BoxDecoration(color: Colors.grey),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 16.sp),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact number",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 14.sp),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "2+ year experience",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 14.sp),
              )
            ],
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 28.h,
                width: 105.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xff49CD6E)),
                child: Center(
                  child: Text(
                    "Available",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(top: 25.h,left: 50.w),
            child: Row(
              children: [
                Text(
                  "Add needed service",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 16.sp),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 50.w,top: 20.h),
            child: Row(
              children: [
                Container(
                  height: 40.h,
                  width: 270.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffCFE2FF)),
                  child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 15.w),
                              child: Text(
                                "Fuel leaking",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 130.w),
                              child: Icon(Icons.arrow_drop_down_sharp),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 5.w),
                  child: Icon(Icons.add_circle),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 50.w,top: 20.h),
            child: Row(
              children: [
                Container(
                  height: 40.h,
                  width: 270.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffCFE2FF)),
                  child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 230.w),
                              child: Icon(Icons.arrow_drop_down_sharp),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 25.h,left: 50.w),
            child: Row(
              children: [
                Text(
                  "Place",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 16.sp),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 50.w,top: 20.h),
            child: Row(
              children: [
                Container(
                  height: 70.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffCFE2FF)),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 15.h),
                              child: Text(
                                "Beach road Calicut",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.h,
                width: 212.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xff2357D9)),
                child: Center(
                  child: Text(
                    "Request",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
