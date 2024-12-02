import 'package:car_app/Mechanic/mech_Tabbar.dart';
import 'package:car_app/Mechanic/mech_Signup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mech_Navigationbar.dart';

class Mech_Login extends StatefulWidget {
  const Mech_Login({super.key});

  @override
  State<Mech_Login> createState() => _Mech_LoginState();
}

class _Mech_LoginState extends State<Mech_Login> {

  final form_key = GlobalKey<FormState>();
  final mailctrl = TextEditingController();
  final pswdctrl = TextEditingController();
  String id = "";

  void mech_login() async {
    final mech = await FirebaseFirestore.instance
        .collection("Mechanic_register")
        .where("Email", isEqualTo: mailctrl.text)
        .where("Password", isEqualTo: pswdctrl.text)
        .get();
    if (mech.docs.isNotEmpty) {
      id = mech.docs[0].id;
      print("$id");
      SharedPreferences mech_data =await SharedPreferences.getInstance();
      mech_data.setString("mech_id", id);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return MechNavigationbar();
        },
      ));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid e-mail or password!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
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
                        color:  Color(0XFFCFE2FF),image: DecorationImage(image: AssetImage("assets/Logo.png"))
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
                      "Enter e_mail",
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
                child: TextFormField(controller: mailctrl,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty e_mail";
                    }
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "E-mail",
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
                child: TextFormField(controller: pswdctrl,
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
                            mech_login();
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
                    child: InkWell(onTap: () { Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Mech_Signup();
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
      ),
    );
  }
}
