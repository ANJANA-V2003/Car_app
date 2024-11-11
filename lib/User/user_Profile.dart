import 'package:car_app/User/user_Tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({super.key});

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  final form_key = GlobalKey<FormState>();
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
                  return User_Tabbar();
                },
              ));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: form_key,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.r,
                  backgroundImage: AssetImage("assets/profile_user.jpg"),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 50.w),
                  child: Text(
                    "Enter your name",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Name",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Enter your phone number",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Phone number",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Enter your email ",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter email",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 120.h, bottom: 20.h),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return User_Tabbar();
                          },
                        ));
                      },
                      child: Container(
                        height: 50.h,
                        width: 200.w,
                        child: Center(
                          child: Text(
                            "Done",
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0XFF2357D9)),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
