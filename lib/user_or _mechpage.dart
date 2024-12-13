import 'package:car_app/Admin/admin_Login.dart';
import 'package:car_app/Mechanic/mech_Login.dart';
import 'package:car_app/User/user_Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserOr_Mechpage extends StatefulWidget {
  const UserOr_Mechpage({super.key});

  @override
  State<UserOr_Mechpage> createState() => _UserOr_MechpageState();
}

class _UserOr_MechpageState extends State<UserOr_Mechpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFCFE2FF),
      appBar: AppBar(
        backgroundColor: Color(0XFFCFE2FF),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 140.h,
                width: 140.w,
                decoration: BoxDecoration(
                    color: Color(0XFFCFE2FF),
                    image:
                        DecorationImage(image: AssetImage("assets/Logo.png"))),
              )
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Text(
                  "Who are you",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 16.sp),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 60.w, top: 30.h),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Mech_Login();
                      },
                    ));
                  },
                  child: Container(
                    height: 50.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0XFF2357D9),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                "Mechanic",
                                style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 60.w, top: 30.h),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return User_Login();
                      },
                    ));
                  },
                  child: Container(
                    height: 50.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                "User",
                                style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Admin_Login();
                      },
                    ));
                  },
                  child: Text(
                    "Admin Login",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 22.sp,
                        color: Color(0xff2357D9)),
                  ))
            ],
          ),
          SizedBox(
            height: 140.h,
          ),
          // Row(mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       height: 50.h,
          //       width: 200.w,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10.r),
          //         color: Color(0XFF2357D9),
          //       ),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Row(mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Text(
          //                 "CONTINUE",
          //                 style: GoogleFonts.poppins(
          //                     fontSize: 16.sp,
          //                     fontWeight: FontWeight.w700,
          //                     color: Colors.white),
          //               )
          //             ],
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
