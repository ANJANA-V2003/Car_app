import 'package:car_app/User/user_Tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_Paymentpage extends StatefulWidget {
  const User_Paymentpage({super.key});

  @override
  State<User_Paymentpage> createState() => _User_PaymentpageState();
}

class _User_PaymentpageState extends State<User_Paymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 300.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Successful",
                style: GoogleFonts.poppins(
                    fontSize: 24.sp, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 280.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return User_Tabbar();
                  },
                ));
              },
                child: Container(
                  height: 50.h,
                  width: 250.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xff2357D9)),
                  child: Center(
                    child: Text(
                      "Back to home page",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
