import 'dart:async';

import 'package:car_app/user_or%20_mechpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return UserOr_Mechpage();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFCFE2FF),
      body: Center(
        child: Container(
          height: 160.h,
          width: 160.w,
          decoration: BoxDecoration(
              color: Color(0XFFCFE2FF),
              image: DecorationImage(image: AssetImage("assets/Logo.png"))),
        ),
      ),
    );
  }
}
