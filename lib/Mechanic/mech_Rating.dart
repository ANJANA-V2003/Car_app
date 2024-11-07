import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Rating extends StatefulWidget {
  const Mech_Rating({super.key});

  @override
  State<Mech_Rating> createState() => _Mech_RatingState();
}

class _Mech_RatingState extends State<Mech_Rating> {
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
          "Rating",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20.sp),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40.h),
          Text(
            "The rating given to you",
            style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey),
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 140.h,
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
                            padding: EdgeInsets.only(
                              left: 20.w,
                            ),
                            child: CircleAvatar(
                              radius: 40.r,
                              backgroundColor: Color(0xffCFE2FF),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 15.w, top: 10.h),
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
                              padding: EdgeInsets.only(
                                top: 10.h,
                              ),
                              child: Text(
                                "Date",
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
                                "Time",
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
                                "Place",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, top: 40.h),
                      child: Row(children: [
                        Column(
                          children: [
                            Text(
                              "Rating",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.yellow[600],
                                  size: 13.w,
                                ),
                                Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.yellow[600],
                                  size: 13.w,
                                ),
                                Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.yellow[600],
                                  size: 13.w,
                                ),
                                Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.yellow[600],
                                  size: 13.w,
                                ),
                                Icon(
                                  CupertinoIcons.star,
                                  color: Colors.black,
                                  size: 13.w,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "4/5",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
