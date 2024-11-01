import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Requests extends StatefulWidget {
  const Mech_Requests({super.key});

  @override
  State<Mech_Requests> createState() => _Mech_RequestsState();
}

class _Mech_RequestsState extends State<Mech_Requests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xffFFFFFF),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
            child: Card(color: Color(0xffCFE2FF),
              child: InkWell(onTap: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return ();
                //   },
                // ));
              },
                child: Container(
                  height: 120.h,
                  width: 320.w,
                  decoration: BoxDecoration(color: Color(0xffCFE2FF),borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20.w,
                            ),
                            child:CircleAvatar(radius: 40.r,backgroundColor: Color(0xffCFE2FF),)
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 15.w,top: 10.h),
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
                                padding:  EdgeInsets.only(top: 10.h,left: 130.w),
                                child: Text(
                                  "Fuel leaking",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 10.h,left: 130.w),
                                child: Text(
                                  "Date",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 10.h,left: 130.w),
                                child: Text(
                                  "Time",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 10.h,left: 130.w),
                                child: Text(
                                  "Place",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),);
  }
}
