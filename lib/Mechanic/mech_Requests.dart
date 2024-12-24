import 'package:car_app/Mechanic/mech_Accept_or_Reject.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mech_Requests extends StatefulWidget {
  const Mech_Requests({super.key});

  @override
  State<Mech_Requests> createState() => _Mech_RequestsState();
}

class _Mech_RequestsState extends State<Mech_Requests> {
  @override
  void initState() {
    // TODO: implement initState
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
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("Requests")
          .where("Mech_id", isEqualTo: Mech_id)
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

        var req_user_datas = snapshot.data!.docs;

        return Scaffold(
          backgroundColor: Color(0xffFFFFFF),
          body: ListView.builder(
            itemCount: req_user_datas.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                child: Card(
                  color: Color(0xffCFE2FF),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Mech_AcceptOrReject(
                            id: req_user_datas[index].id,
                            name: req_user_datas[index]["User_name"],
                            problem: req_user_datas[index]["Work"],
                            place: req_user_datas[index]["Location"],
                            date: req_user_datas[index]["Date"],
                            time: req_user_datas[index]["Time"],
                            phone: req_user_datas[index]["User_phone"],
                            profile:req_user_datas[index]["User_profile"]
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
                                  padding:
                                      EdgeInsets.only(left: 20.w, top: 10.h),
                                  child: CircleAvatar(
                                    radius: 35.r,
                                    backgroundColor: Color(0xffCFE2FF),
                                    backgroundImage:
                                       NetworkImage(req_user_datas[index]["User_profile"]),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w, top: 5.h),
                                child: Text(
                                  req_user_datas[index]["User_name"],
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10.h, left: 130.w),
                                    child: Text(
                                      req_user_datas[index]["Work"],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10.h, left: 130.w),
                                    child: Text(
                                      req_user_datas[index]["Date"],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10.h, left: 130.w),
                                    child: Text(
                                      req_user_datas[index]["Time"],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10.h, left: 130.w),
                                    child: Text(
                                      req_user_datas[index]["Location"],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                ],
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
