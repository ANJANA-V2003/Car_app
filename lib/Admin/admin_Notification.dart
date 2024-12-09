import 'package:car_app/Admin/admin_Add_notification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("Admin_Notification")
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

          var notifications = snapshot.data!.docs;

          return Column(
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
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                      child: Card(
                        child: Container(
                          height: 100.h,
                          width: 350.w,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15.w),
                                          child: Text(
                                            notifications[index]["Heading"],
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 350.w,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              notifications[index]["Content"],
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 14.sp),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Admin_AddNotification();
            },
          ));
        },
        child: Icon(
          Icons.add,
          size: 40.sp,
          color: Color(0xff2357D9),
        ),
      ),
    );
  }
}
