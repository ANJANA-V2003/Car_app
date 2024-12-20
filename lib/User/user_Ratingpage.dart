import 'package:car_app/User/user_Tabbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_Ratingpage extends StatefulWidget {
  const User_Ratingpage({super.key, required this.id, required this.name});
  final id;
  final name;

  @override
  State<User_Ratingpage> createState() => _User_RatingpageState();
}

class _User_RatingpageState extends State<User_Ratingpage> {
  double _rating = 1;

  Future<void> rating() async {
    FirebaseFirestore.instance
        .collection("Requests")
        .doc(widget.id)
        .update({"Rating": _rating});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.id);
  }

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
          " Your rating",
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
            height: 10.h,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 45.w, top: 60.h),
                child: Row(
                  children: [
                    Text(
                      "Add rating",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              RatingBar.builder(
                initialRating: 1,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                onRatingUpdate: (rating) {
                  _rating = rating;
                  print(_rating);
                },
              ),
              SizedBox(
                height: 130.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      rating();
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return User_Tabbar();
                      },));
                    },
                    child: Container(
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
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
