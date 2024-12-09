import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Notification extends StatefulWidget {
  const Mech_Notification({super.key});

  @override
  State<Mech_Notification> createState() => _Mech_NotificationState();
}

class _Mech_NotificationState extends State<Mech_Notification> {
  @override
  Widget build(BuildContext context) {
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
          "Notification",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20.sp),
        ),
      ),
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection("Admin_Notification").snapshots(),builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child:
              CircularProgressIndicator()); //loading action , shows that data is
        }

        if (!snapshot.hasData) {
          // to check if there is data if not it returns the text
          return Center(child: Text("No data found"));
        }

        var notification = snapshot.data!.docs;
        return ListView.builder(itemCount: notification.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(
                        height: 120.h,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(width: 1.w)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: SizedBox(width: 200,
                                    child: Text(
                                      notification[index]["Content"],
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Color(0xff7D7D7D)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20.w),
                                  child: Text(
                                    notification[index]["Time"],
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 15.w),
                                      child: Text(
                                        notification[index]["Date"],
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Color(0xff7D7D7D)),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            );
          },
        );
      },

      ),
    );
  }
}
