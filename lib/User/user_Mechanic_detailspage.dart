import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_MechanicDetailspage extends StatefulWidget {
  const User_MechanicDetailspage({super.key});

  @override
  State<User_MechanicDetailspage> createState() =>
      _User_MechanicDetailspageState();
}

class _User_MechanicDetailspageState extends State<User_MechanicDetailspage> {
  final plcctrl = TextEditingController();
  String _selectedItem = 'Fuel Leaking';

  final List<String> _options = [
    'Fuel Leaking',
    'Engine work',
    'Oil Change',
    'Painting',
  ];
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
          "Needed service",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20.sp),
        ),
      ),
      body: ListView(
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
                "Name",
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
                "Contact number",
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
                "2+ year experience",
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
                  ),controller: plcctrl,
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
            ],
          ),
        ],
      ),
    );
  }
}
