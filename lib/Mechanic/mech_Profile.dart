import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Profile extends StatefulWidget {
  const Mech_Profile({super.key});

  @override
  State<Mech_Profile> createState() => _Mech_ProfileState();
}

class _Mech_ProfileState extends State<Mech_Profile> {
  final form_key = GlobalKey<FormState>();
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
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: form_key,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 80.r,)],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 50.w),
                  child: Text(
                    " Name",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "name",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    " Username",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Username",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Phone number",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Phone number",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Email ",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter email",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Work experience",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter your experience",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Work shop name",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter your shop name",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Your Location",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* required";
                  }
                },
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter your location",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
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
                            "Submit",
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
