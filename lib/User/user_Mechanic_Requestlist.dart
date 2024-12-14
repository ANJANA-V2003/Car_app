import 'package:car_app/User/user_Mechanic_billpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User_MechanicRequestlist extends StatefulWidget {
  const User_MechanicRequestlist({super.key});

  @override
  State<User_MechanicRequestlist> createState() =>
      _User_MechanicRequestlistState();
}

class _User_MechanicRequestlistState extends State<User_MechanicRequestlist> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    SharedPreferences user_data = await SharedPreferences.getInstance();
    setState(() {
      User_id = user_data.getString("user_id");
    });
  }

  var User_id;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("Requests")
          .where("User_id", isEqualTo: User_id)
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

        var user_mech_req = snapshot.data!.docs;

        return Scaffold(
          backgroundColor: Color(0xffFFFFFF),
          body: ListView.builder(
            itemCount: user_mech_req.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                child: Card(
                  color: Color(0xffCFE2FF),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return User_MechanicBillpage();
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
                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Padding(
                          //         padding: EdgeInsets.only(
                          //           left: 20.w,
                          //         ),
                          //         child: CircleAvatar(
                          //           radius: 40.r,
                          //           backgroundColor: Color(0xffCFE2FF),
                          //         )),
                          //     Padding(
                          //       padding: EdgeInsets.only(left: 15.w, top: 10.h),
                          //       child: Text(
                          //         "Name",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w400, fontSize: 14.sp),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 20.w),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10.h, ),
                                      child: Text(
                                          user_mech_req[index]["Mech_name"],
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10.h,),
                                      child: Text(
                                        user_mech_req[index]["Date"],
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10.h, ),
                                      child: Text(
                                        user_mech_req[index]["Time"],
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10.h, ),
                                      child: Text(
                                        user_mech_req[index]["Work"],
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 110.w),
                                child: Container(
                                  height: 30.h,
                                  width: 110.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: Color(0xff49CD6E)),
                                  child: Center(
                                    child: Text(
                                      "Approved",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
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
