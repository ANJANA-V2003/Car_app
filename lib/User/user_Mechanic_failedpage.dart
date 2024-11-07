import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_MechanicFailedpage extends StatefulWidget {
  const User_MechanicFailedpage({super.key});

  @override
  State<User_MechanicFailedpage> createState() =>
      _User_MechanicFailedpageState();
}

class _User_MechanicFailedpageState extends State<User_MechanicFailedpage> {
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
          "Failed project",
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
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.star_lefthalf_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Icon(
                  Icons.edit,
                  size: 25.sp,
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 45.w, top: 60.h),
                child: Row(
                  children: [
                    Text(
                      "Failed reason",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(width: 1.w)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 10.h),
                      child: Text(
                        "Failed reason show",
                        style: GoogleFonts.poppins(
                            color: Color(0xff8B8B8B),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Color(0xff2357D9)),
                    child: Center(
                      child: Text(
                        "Ok",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
