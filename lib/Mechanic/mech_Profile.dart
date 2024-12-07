import 'package:car_app/Mechanic/mech_Edit_Profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mech_Profile extends StatefulWidget {
  const Mech_Profile(
      {super.key,
      required this.id,
      required this.name,
      required this.phone,
      required this.mail,
      required this.experience,
      required this.shop,
      required this.location});
  final id;
  final name;
  final phone;
  final mail;
  final experience;
  final shop;
  final location;
  @override
  State<Mech_Profile> createState() => _Mech_ProfileState();
}

class _Mech_ProfileState extends State<Mech_Profile> {
  final form_key = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  get() {
    namectrl.text = widget.name;
    phnctrl.text = widget.phone;
    mailctrl.text = widget.mail;
    expctrl.text = widget.experience;
    shpctrl.text = widget.shop;
    locactrl.text = widget.location;
  }

  var namectrl = TextEditingController();
  var phnctrl = TextEditingController();
  var mailctrl = TextEditingController();
  var expctrl = TextEditingController();
  var shpctrl = TextEditingController();
  var locactrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Mech_EditProfile();
                },
              ));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: form_key,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80.r,
                  backgroundImage: AssetImage("assets/Mech_profile.png"),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 50.w),
                  child: Text(
                    " Name",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                controller: namectrl,
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "name",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(top: 20.h, left: 50.w),
            //       child: Text(
            //         " Username",
            //         style: GoogleFonts.poppins(
            //             fontSize: 16.sp,
            //             color: Colors.black,
            //             fontWeight: FontWeight.w500),
            //       ),
            //     )
            //   ],
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //         fillColor: Color(0xffE8F1FF),
            //         filled: true,
            //         hintText: "Username",
            //         hintStyle: GoogleFonts.poppins(
            //             fontWeight: FontWeight.w300, fontSize: 14.sp),
            //         border: OutlineInputBorder(
            //             borderSide: BorderSide.none,
            //             borderRadius: BorderRadius.circular(10.r))),
            //   ),
            // ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Phone number",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                controller: phnctrl,
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Phone number",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Email ",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                controller: mailctrl,
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter email",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Work experience",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                controller: expctrl,
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter your experience",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Work shop name",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                controller: shpctrl,
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter your shop name",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 50.w),
                  child: Text(
                    "Your Location",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 45.w, top: 5.h),
              child: TextFormField(
                controller: locactrl,
                decoration: InputDecoration(
                    fillColor: Color(0xffE8F1FF),
                    filled: true,
                    hintText: "Enter your location",
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 60.h, bottom: 20.h),
                    child: InkWell(
                      onTap: () {
                        FirebaseFirestore.instance
                            .collection("Mechanic_register")
                            .doc(widget.id)
                            .update({
                          "Name": namectrl.text,
                          "Phone": phnctrl.text,
                          "Email": mailctrl.text,
                          "Work_experience": expctrl.text,
                          "Shop_name": shpctrl.text,
                          "Location": locactrl.text,
                        });
                        Navigator.of(context).pop();
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return Mech_EditProfile();
                        //   },
                        // ));
                      },
                      child: Container(
                        height: 50.h,
                        width: 200.w,
                        child: Center(
                          child: Text(
                            "Submit",
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0XFF2357D9)),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
