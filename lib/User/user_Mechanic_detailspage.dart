import 'package:car_app/User/user_Mechanic_Requestlist.dart';
import 'package:car_app/User/user_Tabbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User_MechanicDetailspage extends StatefulWidget {
  const User_MechanicDetailspage(
      {super.key,
      required this.id,
      required this.name,
      required this.phone,
      required this.experience,
      required this.profile});
  final id;
  final name;
  final phone;
  final experience;
  final profile;

  @override
  State<User_MechanicDetailspage> createState() =>
      _User_MechanicDetailspageState();
}

class _User_MechanicDetailspageState extends State<User_MechanicDetailspage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user_data();
  }

  Future<void> user_data() async {
    SharedPreferences user_data = await SharedPreferences.getInstance();
    setState(() {
      User_id = user_data.getString("user_id");
    });
  }

  var User_id;

  final plcctrl = TextEditingController();
  String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  String formattedTime = DateFormat('kk:mm').format(DateTime.now());

  String _selectedItem = 'Fuel Leaking';

  final List<String> _options = [
    'Fuel Leaking',
    'Engine work',
    'Oil Change',
    'Painting',
  ];

  Future<void> request() async {
    // var userDoc = await FirebaseFirestore.instance
    //     .collection("User_register")
    //     .doc(User_id)
    //     .get();
    // String? User_name = userDoc.data()?['Name'];
    // String? User_phn = userDoc.data()?['Phone'];

    FirebaseFirestore.instance.collection("Requests").add({
      "Work": _selectedItem,
      "Location": plcctrl.text,
      "Mech_profile":widget.profile,
      "Time": formattedTime,
      "Date": formattedDate,
      "User_profile":"",
      "User_id": User_id,
      "Mech_id": widget.id,
      "Mech_name": widget.name,
      "User_name": "",
      "User_phone": "",
      "Work_amount": 0,
      "Payment": 0,
      "Status": 0,
      "Rating": 0,
    });
  }

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

        final user_req = snapshot.data!.data() as Map<String, dynamic>;

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
              "Needed service",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 20.sp),
            ),
          ),
          body: ListView(
            children: [
              Text("Username:${user_req["Name"]}"),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.phone,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.experience,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 28.h,
                    width: 105.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xff49CD6E)),
                    child: Center(
                      child: Text(
                        "Available",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 50.w),
                child: Row(
                  children: [
                    Text(
                      "Add needed service",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h),
                child: Row(
                  children: [
                    Container(
                      height: 40.h,
                      width: 270.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color(0xffCFE2FF)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: DropdownButton<String>(
                          value: _selectedItem,
                          items: _options.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedItem = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45.h, left: 50.w),
                child: Row(
                  children: [
                    Text(
                      "Place",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffCFE2FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide.none),
                        hintText: "Enter your place",
                        hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                      controller: plcctrl,
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
                  InkWell(
                    onTap: () {
                      request();
                    },
                    child: Container(
                      height: 50.h,
                      width: 212.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color(0xff2357D9)),
                      child: Center(
                        child: Text(
                          "Request",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
