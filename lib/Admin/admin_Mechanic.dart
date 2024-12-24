import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_NavigationBar.dart';

class AdminMechanic extends StatefulWidget {
  const AdminMechanic({super.key, required this.id});
  final id;

  @override
  State<AdminMechanic> createState() => _AdminMechanicState();
}

class _AdminMechanicState extends State<AdminMechanic> {
  Future<void> select_accept() async {
    FirebaseFirestore.instance
        .collection("Mechanic_register")
        .doc(widget.id)
        .update({"Status": 1});
  }

  Future<void> select_reject() async {
    FirebaseFirestore.instance
        .collection("Mechanic_register")
        .doc(widget.id)
        .update({"Status": 2});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Mechanic_register")
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

          final Mech_datas = snapshot.data!.data() as Map<String, dynamic>;

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
                  child: ListView(
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
                            backgroundColor: Colors.white,
                            child: Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffE8F1FF),
                                  image: DecorationImage(fit:BoxFit.fill,
                                    image:NetworkImage(Mech_datas["Profile_path"]),
                                  )),
                            ),
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
                            Mech_datas["Name"] ?? "No data found",
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
                            Mech_datas["Location"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18.sp),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
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
                                        Mech_datas["Name"] ?? "No data found",
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
                        height: 15.h,
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
                                        Mech_datas["Phone"] ?? "No data found",
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
                        height: 15.h,
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
                                        Mech_datas["Email"] ?? "No data found",
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
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.w),
                            child: Text(
                              "Work experience",
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
                                        Mech_datas["Work_experience"] ??
                                            "No data found",
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
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.w),
                            child: Text(
                              "Work shop name",
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
                                        Mech_datas["Shop_name"] ??
                                            "No data found",
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
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.w),
                            child: Text(
                              "Your location",
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
                                        Mech_datas["Location"] ??
                                            "No data found",
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
                        height: 20.h,
                      ),
                      Mech_datas["Status"] == 0
                          ? Row(
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
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: Color(0xff73ABFF)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: Color(0xffFF9F9D)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                          : Mech_datas["Status"] == 1
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Colors.green
                                          // Color(0xff73ABFF)
                                          ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Accepted",
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
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Colors.red
                                          // Color(0xff73ABFF)
                                          ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Rejected",
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
