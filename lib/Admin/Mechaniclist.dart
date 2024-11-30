import 'package:car_app/Admin/admin_Mechanic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mechaniclist extends StatefulWidget {
  const Mechaniclist({super.key});

  @override
  State<Mechaniclist> createState() => _MechaniclistState();
}

class _MechaniclistState extends State<Mechaniclist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("Mechanic_register")
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

          var Mech_datas = snapshot.data!.docs;

          return ListView.builder(
            itemCount: Mech_datas.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return AdminMechanic(id: Mech_datas[index].id);
                        },
                      ));
                    },
                    child: Container(
                      height: 100.h,
                      width: 350.w,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20.w,
                                ),
                                child: Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/admin_img.png"))),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 20.w),
                                child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Mech_datas[index]["Name"],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp),
                                    ),
                                    Text(
                                      Mech_datas[index]["Phone"],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                    Text(
                                      Mech_datas[index]["Work_experience"],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
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
                ),
              );
            },
          );
        },
      ),
    );
  }
}
