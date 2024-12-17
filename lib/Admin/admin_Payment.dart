import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPayment extends StatefulWidget {
  const AdminPayment({super.key});

  @override
  State<AdminPayment> createState() => _AdminPaymentState();
}

class _AdminPaymentState extends State<AdminPayment> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("Requests")
          .where("Payment", whereIn: [4, 5]) //to use or condition
          // .where("Payment",isEqualTo: 5)
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

        var admin_pay = snapshot.data!.docs;

        return Scaffold(
          backgroundColor: Color(0xffE8F1FF),
          body: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: CircleAvatar(
                        radius: 35.r,
                        backgroundImage: AssetImage("assets/profile_user.jpg")),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: admin_pay.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                      child: Card(
                        child: Container(
                          height: 120.h,
                          width: 350.w,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 100.w),
                                    child: Text(
                                      "Date:${admin_pay[index]["Date"]}",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              admin_pay[index]["User_name"],
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 200.w,
                                          ),
                                          // Text(
                                          //  admin_pay[index]["Date"],
                                          //   style: GoogleFonts.poppins(
                                          //       fontWeight: FontWeight.w500,
                                          //       fontSize: 14.sp),
                                          // ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.w, top: 5.h),
                                        child: admin_pay[index]["Payment"] == 4
                                            ? Text(
                                                admin_pay[index]["Reason"],
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sp),
                                              )
                                            : Text(
                                                "\u20B9${admin_pay[index]["Work_amount"]}",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sp),
                                              ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.w, top: 5.h),
                                        child: Text(
                                          admin_pay[index]["Work"],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.w),
                                        child: Text(
                                          admin_pay[index]["Mech_name"],
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
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
