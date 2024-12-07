import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_NavigationBar.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key, required this.id});
  final id;

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
  Future<void> select_accept() async {
    FirebaseFirestore.instance
        .collection("User_register")
        .doc(widget.id)
        .update({"Status": 1});
  }

  Future<void> select_reject() async {
    FirebaseFirestore.instance
        .collection("User_register")
        .doc(widget.id)
        .update({"Status": 2});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("User_register")
            .doc(widget.id)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child:
                    CircularProgressIndicator()); //loading action , shows that data is
          }

          if (snapshot.hasError) {
            // to check if there is data if not it returns the text
            return Center(child: Text("User not found"));
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text("No data found"));
          }

          final User_datas = snapshot.data!.data() as Map<String, dynamic>;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Container(
                  height: 846.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context, MaterialPageRoute(
                                  builder: (context) {
                                    return AdminNavigationbar();
                                  },
                                ));
                              },
                              icon: Icon(Icons.arrow_back_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 65.r,
                            backgroundColor: Color(0xffE8F1FF),
                            child: Container(
                              height: 80.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffE8F1FF),
                                  image: DecorationImage(
                                    image: AssetImage("assets/admin_img.png"),
                                  )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            User_datas["Name"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18.sp),
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
                            User_datas["Location"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18.sp),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.w),
                            child: Text(
                              "Username",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 16.sp),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50.h,
                            width: 280.w,
                            decoration: BoxDecoration(
                                color: Color(0xffE8F1FF),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        User_datas["Name"] ?? "No data found",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff7D7D7D),
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.w),
                            child: Text(
                              "Phone number",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 16.sp),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50.h,
                            width: 280.w,
                            decoration: BoxDecoration(
                                color: Color(0xffE8F1FF),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        User_datas["Phone"] ?? "No data found",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff7D7D7D),
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.w),
                            child: Text(
                              "Email address",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 16.sp),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50.h,
                            width: 280.w,
                            decoration: BoxDecoration(
                                color: Color(0xffE8F1FF),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        User_datas["Email"] ?? "No data found",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff7D7D7D),
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 130.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              select_accept();
                            },
                            child: Container(
                              height: 50.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: Color(0xff73ABFF)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Accept",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              select_reject();
                            },
                            child: Container(
                              height: 50.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: Color(0xffFF9F9D)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Reject",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
