import 'package:car_app/Mechanic/mech_Accepted.dart';
import 'package:car_app/Mechanic/mech_Requests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mech_Tabbar extends StatefulWidget {
  const Mech_Tabbar({super.key});

  @override
  State<Mech_Tabbar> createState() => _Mech_TabbarState();
}

class _Mech_TabbarState extends State<Mech_Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(children: [Padding(
                padding:  EdgeInsets.only(left: 20.w),
                child: CircleAvatar(radius: 35.r,backgroundColor:Color(0xffCFE2FF) ,),
              )],),
              SizedBox(
                height: 40.h,
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
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,indicatorColor: Color(0xffE8F1FF),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffCFE2FF),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            'Requests',
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
                            'Accepted',
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
              Expanded(child: TabBarView(children: [Mech_Requests(), Mech_Accepted()]))
            ],
          ),
        ),
      ),
    );
  }
}
