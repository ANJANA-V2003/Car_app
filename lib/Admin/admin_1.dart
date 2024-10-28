import 'package:car_app/admin_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin1 extends StatefulWidget {
  const Admin1({super.key});

  @override
  State<Admin1> createState() => _Admin1State();
}

class _Admin1State extends State<Admin1> {
  final form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFCFE2FF),
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
                      decoration: BoxDecoration(
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty username";
                    }
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Username",
                      border: OutlineInputBorder(
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
                  },obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(
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
                            // print("object");

                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Admin2();
                              },
                            ));
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
