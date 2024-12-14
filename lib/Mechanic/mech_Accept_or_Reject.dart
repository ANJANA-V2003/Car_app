import 'package:car_app/Mechanic/mech_Edit_Profile.dart';
import 'package:car_app/Mechanic/mech_Tabbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_AcceptOrReject extends StatefulWidget {
  const Mech_AcceptOrReject(
      {super.key,
      required this.id,
      required this.name,
      required this.problem,
      required this.place,
      required this.date,
      required this.time,
      required this.phone});
  final id;
  final name;
  final problem;
  final date;
  final place;
  final time;
  final phone;

  @override
  State<Mech_AcceptOrReject> createState() => _Mech_AcceptOrRejectState();
}

class _Mech_AcceptOrRejectState extends State<Mech_AcceptOrReject> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance
          .collection("Requests")
          .doc(widget.id)
          .get(),
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

        final user_req_details = snapshot.data!.data() as Map<String, dynamic>;

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Mech_Tabbar();
                    },
                  ));
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          body: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: AssetImage("assets/mechimg.png"),
                  backgroundColor: Colors.white,
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Text(
                      "${widget.name}",//add name
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 500.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                          color: Color(0xffCFE2FF),
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25.w,
                              ),
                              Text(
                                "Problem",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 70.w,
                              ),
                              Text(
                                ": ${widget.problem}",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 14.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25.w,
                              ),
                              Text(
                                "Place",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 90.w,
                              ),
                              Text(
                                ": ${widget.place}",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 14.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25.w,
                              ),
                              Text(
                                "Date",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 95.w,
                              ),
                              Text(
                                ": ${widget.date}",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 14.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25.w,
                              ),
                              Text(
                                "Time",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 95.w,
                              ),
                              Text(
                                ": ${widget.time}",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 14.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25.w,
                              ),
                              Text(
                                "Contact number",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                ": ${widget.phone}",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 12.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 70.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 40.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: Color(0xff49CD6E)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Accept",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15.sp,
                                              color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 40.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: Color(0xffCD4949)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Reject",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15.sp,
                                              color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },

    );
  }
}
