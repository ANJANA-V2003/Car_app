import 'package:car_app/User/user_Mechanic_detailspage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_Mechaniclist extends StatefulWidget {
  const User_Mechaniclist({super.key});

  @override
  State<User_Mechaniclist> createState() => _User_MechaniclistState();
}

class _User_MechaniclistState extends State<User_Mechaniclist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return
            Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
            child: Card(
              color: Color(0xffCFE2FF),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return User_MechanicDetailspage();
                    },
                  ));
                },
                child: Container(
                  height: 120.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                      color: Color(0xffCFE2FF),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 10.h),
                            child: Container(
                              height: 80.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffCFE2FF),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/user_img.png"))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.w,
                            ),
                            child: Text(
                              "Name",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 14.sp),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h, left: 20.w),
                                child: Text(
                                  "2+ year experience",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.h,
                                ),
                                child: Text(
                                  "Fuel leaking",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: Container(
                                  height: 24.h,
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: Color(0xff49CD6E)),
                                  child: Center(
                                    child: Text(
                                      "Available",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding:  EdgeInsets.only(left: 30.w),
                      //       child: Container(
                      //         height: 35.h,
                      //         width: 90.w,
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(12.r),
                      //             color: Color(0xff49CD6E)),
                      //         child: Center(
                      //           child: Text(
                      //             "Available",
                      //             style: GoogleFonts.poppins(
                      //                 color: Colors.white,
                      //                 fontSize: 12.sp,
                      //                 fontWeight: FontWeight.w400),
                      //           ),
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
