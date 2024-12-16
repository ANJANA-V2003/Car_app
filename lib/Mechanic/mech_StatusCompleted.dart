import 'package:car_app/Mechanic/mech_Accepted.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Statuscompleted extends StatefulWidget {
  const Mech_Statuscompleted(
      {super.key,
      required this.id,
      required this.name,
      required this.date,
      required this.work,
      required this.time,
      required this.place});
  final id;
  final name;
  final place;
  final date;
  final time;
  final work;

  @override
  State<Mech_Statuscompleted> createState() => _Mech_StatuscompletedState();
}

class _Mech_StatuscompletedState extends State<Mech_Statuscompleted> {
  String _selectedValue = 'Completed';

  final paymentctrl = TextEditingController();
  final reasonctrl = TextEditingController();

  Future<void> completed() async {
    FirebaseFirestore.instance
        .collection("Requests")
        .doc()
        .update({"Payment": 3, "Work_amount": paymentctrl.text});
  }

  Future<void> not_completed() async {
    FirebaseFirestore.instance
        .collection("Requests")
        .doc()
        .update({"Payment": 4, "Reason": reasonctrl.text});
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

        final user_pay = snapshot.data!.data() as Map<String, dynamic>;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Mech_Accepted();
                    },
                  ));
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xffCFE2FF)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15.h),
                                    child: CircleAvatar(
                                      radius: 35.r,
                                      backgroundImage:
                                          AssetImage("assets/mechimg.png"),
                                      backgroundColor: Color(0xffCFE2FF),
                                    ),
                                  ),
                                  Text(
                                    widget.name,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40.w),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Text(
                                      widget.work,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.h),
                                    child: Text(
                                      widget.date,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.h),
                                    child: Text(
                                      widget.time,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.h),
                                    child: Text(
                                      widget.place,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 80.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 45.w),
                child: Row(
                  children: [
                    Text(
                      "Add Status",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    Radio<String>(
                      value: 'Completed',
                      groupValue: _selectedValue,
                      fillColor: WidgetStatePropertyAll(Color(0xff2357D9)),
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                    ),
                    Text(
                      "Completed",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Radio<String>(
                        value: 'Not Completed',
                        groupValue: _selectedValue,
                        fillColor: WidgetStatePropertyAll(Color(0xff2357D9)),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      "Not Completed",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: _selectedValue == 'Completed',
                child: Column(
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
                    Padding(
                      padding: EdgeInsets.only(left: 50.w, right: 50.w),
                      child: TextFormField(
                        controller: paymentctrl,
                        decoration: InputDecoration(
                            hintText: "Enter the amount",
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.r),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black))),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       height: 45.h,
                    //       width: 220.w,
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10.r),
                    //           border: Border.all(width: 1.w)),
                    //       child: Column(
                    //         children: [
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text(
                    //                 "\u20B9",
                    //                 style: GoogleFonts.poppins(
                    //                     fontWeight: FontWeight.w300,
                    //                     fontSize: 30.sp),
                    //               ),
                    //               SizedBox(
                    //                 width: 20.w,
                    //               ),
                    //               Text(
                    //                 "2000/-",
                    //                 style: GoogleFonts.poppins(
                    //                     fontWeight: FontWeight.w600,
                    //                     fontSize: 22.sp),
                    //               )
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     )
                    //   ],
                    // ),
                    SizedBox(
                      height: 70.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.sp),
                              color: Color(0xff2357D9)),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Visibility(
                visible: _selectedValue == 'Not Completed',
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45.w, top: 60.h),
                      child: Row(
                        children: [
                          Text(
                            "Reject reason",
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
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.sp),
                              color: Color(0xff2357D9)),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
