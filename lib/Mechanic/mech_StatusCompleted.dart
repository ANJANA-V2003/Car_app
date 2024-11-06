import 'package:car_app/Mechanic/mech_Accepted.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Statuscompleted extends StatefulWidget {
  const Mech_Statuscompleted({super.key});

  @override
  State<Mech_Statuscompleted> createState() => _Mech_StatuscompletedState();
}

class _Mech_StatuscompletedState extends State<Mech_Statuscompleted> {
  String _selectedValue = 'Completed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(
                builder: (context) {
                  return Mech_Accepted();
                },
              ));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
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
                          padding: EdgeInsets.only(left: 40.w),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Text(
                                  "Fuel leaking",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Text(
                                  "Date",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Text(
                                  "Time",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Text(
                                  "Place",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
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
          ),
          SizedBox(
            height: 80.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w),
            child: Row(
              children: [
                Text(
                  "Add Status",
                  style: GoogleFonts.poppins(
                      fontSize: 20.sp, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Row(
              children: [
                Radio<String>(
                  value: 'Completed',
                  groupValue: _selectedValue,
                  fillColor: WidgetStatePropertyAll(Color(0xff2357D9)),
                  onChanged: (String? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                Text(
                  "Completed",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Radio<String>(
                    value: 'Not Completed',
                    groupValue: _selectedValue,
                    fillColor: WidgetStatePropertyAll(Color(0xff2357D9)),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                ),
                Text(
                  "Not Completed",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                )
              ],
            ),
          ),
          Visibility(
            visible: _selectedValue == 'Completed',
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 45.w, top: 60.h),
                  child: Row(
                    children: [
                      Text(
                        "Amount",
                        style: GoogleFonts.poppins(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
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
                    Container(
                      height: 45.h,
                      width: 220.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(width: 1.w)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "\u20B9",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 30.sp),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                "2000/-",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22.sp),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 70.h,
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
                          "Submit",
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
          ),
          Visibility(
            visible: _selectedValue == 'Not Completed',
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 45.w, top: 60.h),
                  child: Row(
                    children: [
                      Text(
                        "Reject reason",
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
                    )
                  ],
                ),
                SizedBox(
                  height: 70.h,
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
                          "Submit",
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
          )
        ],
      ),
    );
  }
}
