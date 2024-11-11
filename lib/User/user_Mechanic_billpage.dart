import 'package:car_app/User/user_Paymentpage.dart';
import 'package:car_app/User/user_Ratingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_MechanicBillpage extends StatefulWidget {
  const User_MechanicBillpage({super.key});

  @override
  State<User_MechanicBillpage> createState() => _User_MechanicBillpageState();
}

class _User_MechanicBillpageState extends State<User_MechanicBillpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0XFFCFE2FF),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          "Mechanic Bill",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20.sp),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150.h,
                width: 150.w,
                decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("assets/user_img.png"))),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 16.sp),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact number",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 14.sp),
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
                "2+ year experience",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 14.sp),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 28.h,
                width: 105.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xff49CD6E)),
                child: Center(
                  child: Text(
                    "Available",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colors.white),
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
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.star_lefthalf_fill,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return User_Ratingpage();
                    },
                  ));
                }, icon: Icon(
                  Icons.edit,
                  size: 25.sp,
                ),)

              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 45.w, top: 60.h),
                child: Row(
                  children: [
                    Text(
                      "Amount",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(width: 1.w)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\u20B9",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 30.sp),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              "2000/-",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return User_Paymentpage();
                      },
                    ));
                  },
                    child: Container(
                      height: 50.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                          color: Color(0xff2357D9)),
                      child: Center(
                        child: Text(
                          "Payment",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
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
        ],
      ),
    );
  }
}
