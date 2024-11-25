import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Service extends StatefulWidget {
  const Mech_Service({super.key});

  @override
  State<Mech_Service> createState() => _Mech_ServiceState();
}

class _Mech_ServiceState extends State<Mech_Service> {
  void _showAlertDialog(BuildContext context) {
    // Set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Color(0xffCFE2FF),
      title: Text(
        "Add service",
        style:
            GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20.sp),
      ),
      content: SizedBox(
        height: 200.h,
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 45.h,
              width: 250.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r)),
            ),
            SizedBox(
              height: 50.h,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 50.h,
                width: 150.w,
                decoration: BoxDecoration(
                    color: Color(0xff2357D9),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Center(
                    child: Text(
                  "Add",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

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
          "service",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20.sp),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 290.h,
                width: 330.w,
                decoration: BoxDecoration(
                    color: Color(0XFFCFE2FF),
                    borderRadius: BorderRadius.circular(15.r)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 40.w, bottom: 10.h),
                            child: Text(
                              "Tyre puncture service",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300, fontSize: 15.sp),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 30.w),
                            child: Icon(
                              CupertinoIcons.trash_fill,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1.w,
                      indent: 20.w,
                      endIndent: 20.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 40.w),
                            child: Text(
                              "Engine service",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300, fontSize: 15.sp),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 30.w),
                            child: Icon(
                              CupertinoIcons.trash_fill,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1.w,
                      indent: 20.w,
                      endIndent: 20.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 40.w),
                            child: Text(
                              "A/c service",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300, fontSize: 15.sp),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 30.w),
                            child: Icon(
                              CupertinoIcons.trash_fill,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1.w,
                      indent: 20.w,
                      endIndent: 20.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 40.w),
                            child: Text(
                              "Electric service",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300, fontSize: 15.sp),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 30.w),
                            child: Icon(
                              CupertinoIcons.trash_fill,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(side: BorderSide(width: 1)),
        backgroundColor: Colors.white,
        onPressed: () => _showAlertDialog(context),
        child: Icon(
          Icons.add,
          size: 40.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}
