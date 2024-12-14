import 'package:car_app/User/user_Mechanic_detailspage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User_Mechaniclist extends StatefulWidget {
  const User_Mechaniclist({super.key});

  @override
  State<User_Mechaniclist> createState() => _User_MechaniclistState();
}

class _User_MechaniclistState extends State<User_Mechaniclist> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("Mechanic_register")
          .where("Status", isEqualTo: 1)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child:
                  CircularProgressIndicator()); //loading action , shows that data is
        }

        if (!snapshot.hasData) {
          // to check if there is data if not it returns the text
          return Center(child: Text("No data found"));
        }

        var user_mech_datas = snapshot.data!.docs;

        return Scaffold(
          backgroundColor: Color(0xffFFFFFF),
          body: ListView.builder(
            itemCount: user_mech_datas.length,
            itemBuilder: (context, index) {
              var mechanicData = user_mech_datas[index];
              return Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                child: Card(
                  color: Color(0xffCFE2FF),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return User_MechanicDetailspage(
                              id: user_mech_datas[index].id,
                              name: user_mech_datas[index]["Name"],
                              phone: user_mech_datas[index]["Phone"],
                             profile:user_mech_datas[index]["Profile_path"],
                             // mail: user_mech_datas[index]["Email"],
                              experience:user_mech_datas[index]["Work_experience"],
                              //shop: user_mech_datas[index]["Shop_name"],
                             // location: user_mech_datas[index]["Location"]
                          );
                        },
                      ));
                    },
                    child: Container(
                      height: 120.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                          color: Color(0xffCFE2FF),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                                child: Container(
                                  height: 80.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffCFE2FF),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/user_img.png"))),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                ),
                                child: Text(
                                  user_mech_datas[index]["Name"],
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.h,
                                      ),
                                      child: Text(
                                        user_mech_datas[index]
                                            ["Work_experience"],
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.h,
                                      ),
                                      child: Text(
                                        user_mech_datas[index]["Location"],
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.h),
                                      child: Container(
                                        height: 24.h,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.r),
                                            color: Color(0xff49CD6E)),
                                        child: Center(
                                          child: Text(
                                            "Available",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
