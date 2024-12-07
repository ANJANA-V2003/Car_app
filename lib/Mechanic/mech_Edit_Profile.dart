import 'package:car_app/Mechanic/mech_Navigationbar.dart';
import 'package:car_app/Mechanic/mech_Profile.dart';
import 'package:car_app/Mechanic/mech_Tabbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mech_Login.dart';

class Mech_EditProfile extends StatefulWidget {
  const Mech_EditProfile({super.key});

  @override
  State<Mech_EditProfile> createState() => _Mech_EditProfileState();
}

class _Mech_EditProfileState extends State<Mech_EditProfile> {
  void initState() {
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    SharedPreferences mech_data = await SharedPreferences.getInstance();
    setState(() {
      Mech_id = mech_data.getString("mech_id");
    });
  }

  var Mech_id;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Mechanic_register")
            .doc(Mech_id)
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

          final mech_detail = snapshot.data!.data() as Map<String, dynamic>;

          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return MechNavigationbar();
                        },
                      ));
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                actions: [
                  Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Mech_Profile(
                                  id: Mech_id,
                                  name: mech_detail["Name"],
                                  phone: mech_detail["Phone"],
                                  mail: mech_detail["Email"],
                              experience:mech_detail["Work_experience"],
                              shop: mech_detail["Shop_name"],
                              location: mech_detail["Location"]);
                            },
                          ));
                        },
                        icon: Icon(
                          Icons.edit_note_outlined,
                          size: 40.sp,
                        ),
                      ))
                ],
              ),
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 80.r,
                        backgroundImage: AssetImage("assets/Mech_profile.png"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE8F1FF),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.h),
                          child: Text(
                            mech_detail["Name"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Container(
                  //       height: 50.h,
                  //       width: 320.w,
                  //       decoration: BoxDecoration(
                  //           color: Color(0xffE8F1FF),
                  //           borderRadius: BorderRadius.circular(10.r)),
                  //       child: Padding(
                  //         padding: EdgeInsets.only(top: 10.h, left: 20.h),
                  //         child: Text(
                  //           mech_detail["Name"] ?? "No data found",
                  //           style: GoogleFonts.poppins(
                  //               fontSize: 18.sp, fontWeight: FontWeight.w400),
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE8F1FF),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.h),
                          child: Text(
                            mech_detail["Phone"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, fontWeight: FontWeight.w400),
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
                      Container(
                        height: 50.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE8F1FF),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.h),
                          child: Text(
                            mech_detail["Email"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, fontWeight: FontWeight.w400),
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
                      Container(
                        height: 50.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE8F1FF),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.h),
                          child: Text(
                            mech_detail["Work_experience"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, fontWeight: FontWeight.w400),
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
                      Container(
                        height: 50.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE8F1FF),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.h),
                          child: Text(
                            mech_detail["Location"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, fontWeight: FontWeight.w400),
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
                      Container(
                        height: 50.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE8F1FF),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.h),
                          child: Text(
                            mech_detail["Shop_name"] ?? "No data found",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, fontWeight: FontWeight.w400),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Mech_Tabbar();
                            },
                          ));
                        },
                        child: Container(
                          height: 50.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                              color: Color(0xff2357D9),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: Text(
                              "Done",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ));
        });
  }
}
