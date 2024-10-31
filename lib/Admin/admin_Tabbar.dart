import 'package:car_app/Admin/Mechaniclist.dart';
import 'package:car_app/Admin/admin_Payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Userlist.dart';

class Admin_Tabbar extends StatefulWidget {
  const Admin_Tabbar({super.key});

  @override
  State<Admin_Tabbar> createState() => _Admin_TabbarState();
}

class _Admin_TabbarState extends State<Admin_Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(children: [Padding(
              padding:  EdgeInsets.only(left: 20.w),
              child: CircleAvatar(radius: 35.r,),
            )],),
            SizedBox(
              height: 20.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.h,
                  width: 330.w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white),
                  child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff6EA3F3),
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          'User',
                          style:GoogleFonts.poppins (
                            // color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Mechanic',
                          style: GoogleFonts.poppins(
                            // color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(child: TabBarView(children: [Userlist(), Mechaniclist()]))
          ],
        ),
      ),
    );
  }
}


