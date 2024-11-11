import 'package:car_app/Admin/admin_Notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_NavigationBar.dart';

class Admin_AddNotification extends StatefulWidget {
  const Admin_AddNotification({super.key});

  @override
  State<Admin_AddNotification> createState() => _Admin_AddNotificationState();
}

class _Admin_AddNotificationState extends State<Admin_AddNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: Column(
        children: [
          SizedBox(height: 40.h),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return AdminNavigationbar();
                      },
                    ));
                  },
                  icon: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Icon(Icons.arrow_back_ios),
                  ))
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: Row(
              children: [
                Text(
                  "Enter Matter",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55.h,
                  width: 330.w,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Text(
                              "Matter",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14.sp,
                                  color: Color(0xff7D7D7D)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: Row(
              children: [
                Text(
                  "Enter Content",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 380.h,
                  width: 330.w,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 20.h),
                            child: Text(
                              "Content . . . .",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14.sp,
                                  color: Color(0xff7D7D7D)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return AdminNotification();
                  },
                ));
              },
                child: Container(
                  height: 50.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff2357D9)),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
