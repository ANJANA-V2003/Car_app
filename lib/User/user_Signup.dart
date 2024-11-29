import 'package:car_app/User/user_Login.dart';
import 'package:car_app/User/user_Tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_Signup extends StatefulWidget {
  const User_Signup({super.key});

  @override
  State<User_Signup> createState() => _User_SignupState();
}

class _User_SignupState extends State<User_Signup> {
  final form_key = GlobalKey<FormState>();

  final namectrl = TextEditingController();
  final phnctrl = TextEditingController();
  final mailctrl = TextEditingController();
  final pswctrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFCFE2FF),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(
                builder: (context) {
                  return User_Login();
                },
              ));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Color(0XFFCFE2FF),
      body: Form(
        key: form_key,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Container(
                    height: 140.h,
                    width: 140.w,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Logo.png")),
                      color: Color(0XFFCFE2FF)
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Text(
                    "SIGN UP ",
                    style: GoogleFonts.poppins(
                        fontSize: 23.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 50.w),
                  child: Text(
                    "Enter Username",
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
              child: TextFormField(controller: namectrl,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Username",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                    border: OutlineInputBorder(borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r),)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Enter Phone number",
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
              child: TextFormField(controller: phnctrl,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Phone number",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                    border: OutlineInputBorder(borderSide: BorderSide.none,
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
              child: TextFormField(controller: mailctrl,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter email",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                    border: OutlineInputBorder(borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Enter your password",
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
              child: TextFormField(controller: pswctrl,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter your password",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                    border: OutlineInputBorder(borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 60.h, bottom: 20.h),
                    child: InkWell(
                      onTap: () {
                        if (form_key.currentState!.validate()) {
                          print("object");

                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return User_Tabbar();
                            },
                          ));
                        }
                      },
                      child: Container(
                        height: 50.h,
                        width: 200.w,
                        child: Center(
                          child: Text(
                            "SIGN UP",
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
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
