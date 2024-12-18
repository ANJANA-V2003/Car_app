import 'package:car_app/User/user_Ratingpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_MechanicFailedpage extends StatefulWidget {
  const User_MechanicFailedpage({super.key, required this. id, required this. name});
  final id;
  final name;

  @override
  State<User_MechanicFailedpage> createState() =>
      _User_MechanicFailedpageState();
}

class _User_MechanicFailedpageState extends State<User_MechanicFailedpage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: FirebaseFirestore.instance.collection("Requests").doc(widget.id).get(),builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(
            child:
            CircularProgressIndicator()); //loading action , shows that data is
      }

      if (!snapshot.hasData) {
        // to check if there is data if not it returns the text
        return Center(child: Text("No data found"));
      }

      final mech_fail = snapshot.data!.data() as Map<String, dynamic>;

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
            "Failed project",
            style:
            GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20.sp),
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
                          image: AssetImage("assets/user_img.png"))),
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
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return User_Ratingpage();
                          },
                        ));
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
                        "Failed reason",
                        style: GoogleFonts.poppins(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(width: 1.w)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 10.h),
                        child: Text(
                         mech_fail["Reason"],
                          style: GoogleFonts.poppins(
                              color: Color(0xff8B8B8B),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.sp),
                            color: Color(0xff2357D9)),
                        child: Center(
                          child: Text(
                            "Ok",
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
