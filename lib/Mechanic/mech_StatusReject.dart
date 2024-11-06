import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Statusreject extends StatefulWidget {
  const Mech_Statusreject({super.key});

  @override
  State<Mech_Statusreject> createState() => _Mech_StatusrejectState();
}

class _Mech_StatusrejectState extends State<Mech_Statusreject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            // Navigator.pop(context, MaterialPageRoute(
            //   builder: (context) {
            //     return Mech_Login();
            //   },
            // ));
          },
          icon: Icon(Icons.arrow_back_ios)),
    ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120.h,
                width: 320.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Color(0xffCFE2FF)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15.h),
                                child: CircleAvatar(
                                  radius: 35.r,
                                ),
                              ),
                              Text(
                                "Name",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 40.w),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: 10.h),
                                child: Text(
                                  "Fuel leaking",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 5.h),
                                child: Text(
                                  "Date",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 5.h),
                                child: Text(
                                  "Time",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 5.h),
                                child: Text(
                                  "Place",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),);
  }
}
