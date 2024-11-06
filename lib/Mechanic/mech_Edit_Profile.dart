import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_EditProfile extends StatefulWidget {
  const Mech_EditProfile({super.key});

  @override
  State<Mech_EditProfile> createState() => _Mech_EditProfileState();
}

class _Mech_EditProfileState extends State<Mech_EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Icon(
              Icons.edit_note_outlined,
              size: 40.sp,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80.r,
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.h),
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
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
              Container(
                height: 50.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.h),
                  child: Text(
                    "User Name",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
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
              Container(
                height: 50.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.h),
                  child: Text(
                    "Phone number",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
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
              Container(
                height: 50.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.h),
                  child: Text(
                    "Email",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
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
              Container(
                height: 50.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.h),
                  child: Text(
                    "Experience",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
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
              Container(
                height: 50.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.h),
                  child: Text(
                    "Location",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
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
              Container(
                height: 50.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.h),
                  child: Text(
                    "Shop name",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
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
              Container(
                height: 50.h,
                width: 200.w,
                decoration: BoxDecoration(
                    color: Color(0xff2357D9),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Text(
                    "Done",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
