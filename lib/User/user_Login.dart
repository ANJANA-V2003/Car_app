import 'package:car_app/User/user_Signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_Login extends StatefulWidget {
  const User_Login({super.key});

  @override
  State<User_Login> createState() => _User_LoginState();
}

class _User_LoginState extends State<User_Login> {
  final form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0XFFCFE2FF),
      body: Form(
        key: form_key,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 101.5.h),
                    child: Container(
                      height: 140.h,
                      width: 140.w,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/1.png")),
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80.h),
                    child: Text(
                      "LOGIN",
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
                padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 10.h),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty username";
                    }
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Username",
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                      border: OutlineInputBorder(borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.r))),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, left: 50.w),
                    child: Text(
                      "Enter Password",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 10.h),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty password";
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                      border: OutlineInputBorder(borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.r))),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 235.w),
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 80.h),
                      child: InkWell(
                        onTap: () {
                          if (form_key.currentState!.validate()) {
                            // print("object");

                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (context) {
                            //     return Mech_Tabbar();
                            //   },
                            // ));
                          }
                        },
                        child: Container(
                          height: 50.h,
                          width: 200.w,
                          child: Center(
                            child: Text(
                              "LOGIN",
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
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h,),
                    child: Text(
                      "Don't have an account ?",
                      style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 20.h,left: 5.w),
                    child: InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return User_Signup();
                      },
                    ));

                    },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            color: Color(0xff2357D9),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),);
  }
}
