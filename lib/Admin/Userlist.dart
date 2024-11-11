import 'package:car_app/Admin/admin_User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Userlist extends StatefulWidget {
  const Userlist({super.key});

  @override
  State<Userlist> createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
            child: Card(
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AdminUser();
                  },
                ));
              },
                child: Container(
                  height: 100.h,
                  width: 350.w,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20.w,
                            ),
                            child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("assets/admin_img.png"))),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(right: 30.w,top: 10.h),
                                child: Text(
                                  "Name",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right: 10.w),
                                child: Text(
                                  "Location",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 40.w),
                                child: Text(
                                  "Mobile Number",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right: 30.w),
                                child: Text(
                                  "Email",
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
      ),
    );
  }
}
