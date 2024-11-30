import 'dart:ui';

import 'package:car_app/Admin/admin_NavigationBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin_Login extends StatefulWidget {
  const Admin_Login({super.key});

  @override
  State<Admin_Login> createState() => _Admin_LoginState();
}

class _Admin_LoginState extends State<Admin_Login> {
  final form_key = GlobalKey<FormState>();

  final namectrl = TextEditingController();
  final pswdctrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFCFE2FF),
      body: SingleChildScrollView(
        child: Form(
          key: form_key,
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
                      decoration: BoxDecoration(
                          color: Color(0XFFCFE2FF),
                          image: DecorationImage(
                              image: AssetImage("assets/Logo.png"))),
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
                    padding: EdgeInsets.only(top: 60.h, left: 50.w),
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
                  controller: namectrl,
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
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
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
                  controller: pswdctrl,
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
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.r))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 80.h),
                      child: InkWell(
                        onTap: () {
                          if (form_key.currentState!.validate()) {
                            if (namectrl.text == "Anjana" && pswdctrl.text == "anjana") {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return AdminNavigationbar();
                                },
                              ));
                            }
                            else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Invalid username or password!'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
