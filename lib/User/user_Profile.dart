import 'package:car_app/User/user_Tabbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({super.key});

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdatas();
  }

  Future<void> getdatas() async {
    SharedPreferences user_data = await SharedPreferences.getInstance();
    setState(() {
      User_id = user_data.getString("user_id");
    });
  }

  var User_id;
  final form_key = GlobalKey<FormState>();
  final namectrl = TextEditingController();
  final phnctrl = TextEditingController();
  final mailctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance
          .collection("User_register")
          .doc(User_id)
          .get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child:
                  CircularProgressIndicator()); //loading action , shows that data is
        }

        if (snapshot.hasError) {
          // to check if there is data if not it returns the text
          return Center(child: Text("User not found"));
        }

        if (!snapshot.hasData || snapshot.data == null) {
          return Center(child: Text("No data found"));
        }

        final user_detail = snapshot.data!.data() as Map<String, dynamic>;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return User_Tabbar();
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
                      radius: 60.r,
                      backgroundImage: NetworkImage(user_detail["Profile_path"]),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        user_detail["Name"] ?? "No data found",
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40.h, left: 50.w),
                      child: Text(
                        "Username",
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
                  child: Container(
                    height: 50.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        color: Color(0xffE8F1FF),
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 20.w),
                              child: Text(user_detail["Name"] ?? "No data found",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.sp, fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // child: TextFormField(
                  //   controller: namectrl,
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return "*required";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       fillColor: Color(0xffE8F1FF),
                  //       filled: true,
                  //       hintText: "Name",
                  //       hintStyle: GoogleFonts.poppins(
                  //           fontWeight: FontWeight.w300, fontSize: 14.sp),
                  //       border: OutlineInputBorder(
                  //           borderSide: BorderSide.none,
                  //           borderRadius: BorderRadius.circular(10.r))),
                  // ),
                ),
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
                  child:Container(
                    height: 50.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        color: Color(0xffE8F1FF),
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 20.w),
                              child: Text(user_detail["Phone"] ?? "No data found",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.sp, fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // TextFormField(
                  //   controller: phnctrl,
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return "*required";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       fillColor: Color(0xffE8F1FF),
                  //       filled: true,
                  //       hintText: "Phone number",
                  //       hintStyle: GoogleFonts.poppins(
                  //           fontWeight: FontWeight.w300, fontSize: 14.sp),
                  //       border: OutlineInputBorder(
                  //           borderSide: BorderSide.none,
                  //           borderRadius: BorderRadius.circular(10.r))),
                  // ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 50.w),
                      child: Text(
                        "E-mail ",
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
                  child: Container(
                    height: 50.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        color: Color(0xffE8F1FF),
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 20.w),
                              child: Text(user_detail["Email"] ?? "No data found",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.sp, fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // TextFormField(
                  //   controller: mailctrl,
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return "*required";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       fillColor: Color(0xffE8F1FF),
                  //       filled: true,
                  //       hintText: "Enter email",
                  //       hintStyle: GoogleFonts.poppins(
                  //           fontWeight: FontWeight.w300, fontSize: 14.sp),
                  //       border: OutlineInputBorder(
                  //           borderSide: BorderSide.none,
                  //           borderRadius: BorderRadius.circular(10.r))),
                  // ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 120.h, bottom: 20.h),
                        child: InkWell(
                          onTap: () {
                            if (form_key.currentState!.validate()) {
                              // print("object");

                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return User_Tabbar();
                                },
                              ));
                            }
                          },
                          child: Container(
                            height: 50.h,
                            width: 200.w,
                            child: Center(
                              child: Text(
                                "Done",
                                style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
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
      },
    );
  }
}
