import 'package:car_app/User/user_Mechanic_Requestlist.dart';
import 'package:car_app/User/user_Mechaniclist.dart';
import 'package:car_app/User/user_Notification.dart';
import 'package:car_app/User/user_Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class User_Tabbar extends StatefulWidget {
  const User_Tabbar({super.key});

  @override
  State<User_Tabbar> createState() => _User_TabbarState();
}

class _User_TabbarState extends State<User_Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xffCFE2FF),
            leading: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return User_Profile();
                    },
                  ));
                },
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage("assets/profile_user.jpg"),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return User_Notification();
                      },
                    ));
                  },
                  child: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        color: Color(0xffCFE2FF),
                        image: DecorationImage(
                            image: AssetImage("assets/Bell.png"))),
                  ),
                ),
              )
            ],
          ),body:  TabBarView(children: [
          User_Mechaniclist(),
          User_MechanicRequestlist()
        ]),
          bottomNavigationBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              // height: 50.h,
              // width: 330.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Color(0xff2357D9),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2357D9),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      'Mechanic',
                      style: GoogleFonts.poppins(
                        // color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Request',
                      style: GoogleFonts.poppins(
                        // color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // bottomSheet: Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Container(
          //           height: 50.h,
          //           width: 330.w,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10.r),
          //               color: Colors.white),
          //           child: TabBar(
          //             labelColor: Colors.white,
          //             unselectedLabelColor: Colors.black,
          //             indicatorSize: TabBarIndicatorSize.tab,
          //             indicatorColor: Color(0xff2357D9),
          //             indicator: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Color(0xff2357D9),
          //             ),
          //             tabs: [
          //               Tab(
          //                 child: Text(
          //                   'Mechanic',
          //                   style: GoogleFonts.poppins(
          //                     // color: Colors.white,
          //                     fontSize: 14,
          //                     fontWeight: FontWeight.w700,
          //                   ),
          //                 ),
          //               ),
          //               Tab(
          //                 child: Text(
          //                   'Request',
          //                   style: GoogleFonts.poppins(
          //                     // color: Colors.white,
          //                     fontSize: 14,
          //                     fontWeight: FontWeight.w700,
          //                     height: 0,
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //     // TabBarView(children: [
          //     //                 User_Mechaniclist(),
          //     //                 User_MechanicRequestlist()
          //     //               ])
          //   ],
          // ),
        ));
  }
}
