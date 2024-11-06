import 'package:car_app/Mechanic/mech_Notification.dart';
import 'package:car_app/Mechanic/mech_Rating.dart';
import 'package:car_app/Mechanic/mech_Service.dart';
import 'package:car_app/Mechanic/mech_Tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechNavigationbar extends StatefulWidget {
  const MechNavigationbar({super.key});

  @override
  State<MechNavigationbar> createState() => _MechNavigationbarState();
}

class _MechNavigationbarState extends State<MechNavigationbar> {
  int _Index = 0;
  static const List<dynamic> _widgetlist = [
    Mech_Tabbar(),
    Mech_Service(),
    Mech_Rating()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _Index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetlist.elementAt(_Index),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
              label: "Request",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Service",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.star_fill,
              ),
              label: "Rating",
              backgroundColor: Colors.white)
        ],
        //type: BottomNavigationBarType.shifting,
        currentIndex: _Index,
        selectedItemColor: Colors.black, unselectedItemColor: Colors.black,
        selectedLabelStyle:
            GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14.sp),
        backgroundColor: Colors.white,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
