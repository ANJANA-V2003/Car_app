import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mech_Rating extends StatefulWidget {
  const Mech_Rating({super.key});

  @override
  State<Mech_Rating> createState() => _Mech_RatingState();
}

class _Mech_RatingState extends State<Mech_Rating> {
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

        var rate = snapshot.data!.docs;

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0XFFCFE2FF),
            automaticallyImplyLeading: false,
            // leading: IconButton(
            //     onPressed: () {
            //       Navigator.of(context).pop();
            //     },
            //     icon: Icon(Icons.arrow_back_ios)),
            centerTitle: true,
            title: Text(
              "Rating",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 20.sp),
            ),
          ),
          body: ListView.builder(
            itemCount: rate.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140.h,
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
                                    padding: EdgeInsets.only(
                                      left: 20.w,
                                    ),
                                    child: CircleAvatar(
                                      radius: 40.r,
                                      backgroundColor: Color(0xffCFE2FF),
                                      backgroundImage:
                                          AssetImage("assets/mechimg.png"),
                                    )),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.w, top: 10.h),
                                  child: Text(
                                    rate[index]["User_name"],
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: 20.w),
                                  child: RatingBar.builder(
                                    initialRating: rate[index]["Rating"],
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 10,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    onRatingUpdate: (rating) {
                                      rating = 2;
                                    },
                                    ignoreGestures: true,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 10.h,
                                        ),
                                        child: Text(
                                          rate[index]["Work"],
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
                                          rate[index]["Date"],
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
                                          rate[index]["Time"],
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
                                          rate[index]["Location"],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w, top: 40.h),
                              child: Row(children: [
                                Column(
                                  children: [
                                    Text(
                                      "Rating",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${rate[index]["Rating"]}/5",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 11.sp),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ]),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
