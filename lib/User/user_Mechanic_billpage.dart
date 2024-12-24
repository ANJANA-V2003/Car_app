import 'package:car_app/User/user_Paymentpage.dart';
import 'package:car_app/User/user_Ratingpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_MechanicBillpage extends StatefulWidget {
  const User_MechanicBillpage(
      {super.key, required this.id, required this.name, required this. profile});
  final id;
  final name;
  final profile;

  @override
  State<User_MechanicBillpage> createState() => _User_MechanicBillpageState();
}

class _User_MechanicBillpageState extends State<User_MechanicBillpage> {
  Future<void> payed() async {
    FirebaseFirestore.instance
        .collection("Requests")
        .doc(widget.id)
        .update({"Payment": 5});
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return User_Paymentpage(id:widget.id,name:widget.name);
      },
    ));
  }

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

        final mech_bill = snapshot.data!.data() as Map<String, dynamic>;

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0XFFCFE2FF),
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios)),
            centerTitle: true,
            title: Text(
              "Mechanic Bill",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 20.sp),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image:NetworkImage(widget.profile))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.name,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.sp),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),

              SizedBox(
                height: 10.h,
              ),

              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.star_fill,
                    color: Colors.yellow,
                    size: 30.sp,
                  ),
                  Icon(
                    CupertinoIcons.star_fill,
                    color: Colors.yellow,
                    size: 30.sp,
                  ),
                  Icon(
                    CupertinoIcons.star_fill,
                    color: Colors.yellow,
                    size: 30.sp,
                  ),
                  Icon(
                    CupertinoIcons.star_fill,
                    color: Colors.yellow,
                    size: 30.sp,
                  ),
                  Icon(
                    CupertinoIcons.star_lefthalf_fill,
                    color: Colors.yellow,
                    size: 30.sp,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: IconButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(
                          //   builder: (context) {
                          //     return User_Ratingpage();
                          //   },
                          // ));
                        },
                        icon: Icon(
                          Icons.edit,
                          size: 25.sp,
                        ),
                      ))
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 45.w, top: 60.h),
                    child: Row(
                      children: [
                        Text(
                          "Amount",
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45.h,
                        width: 220.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(width: 1.w)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "\u20B9",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 30.sp),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                 mech_bill["Work_amount"].toString(),
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22.sp),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          payed();
                        },
                        child: Container(
                          height: 50.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.sp),
                              color: Color(0xff2357D9)),
                          child: Center(
                            child: Text(
                              "Payment",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
