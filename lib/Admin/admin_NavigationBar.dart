import 'package:car_app/Admin/admin_Notification.dart';
import 'package:car_app/Admin/admin_Payment.dart';
import 'package:car_app/Admin/admin_Tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminNavigationbar extends StatefulWidget {
  const AdminNavigationbar({super.key});

  @override
  State<AdminNavigationbar> createState() => _AdminNavigationbarState();
}

class _AdminNavigationbarState extends State<AdminNavigationbar> {
  int _Index = 0;
  static const List<dynamic> _widgetlist = [
    Admin_Tabbar(),
    AdminPayment(),
    AdminNotification()
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
                Icons.home_filled,
              ),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.payment,
              ),
              label: "Payment",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chat_bubble_2_fill,
              ),
              label: "Notifications",
              backgroundColor: Colors.white)
        ],
        //type: BottomNavigationBarType.shifting,
        currentIndex: _Index,
        selectedItemColor: Color(0xff2357D9), unselectedItemColor: Colors.black,
        selectedLabelStyle:
            GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14.sp),
        // selectedIconTheme: IconThemeData(
        //   color: Color(0xff2357D9),
        // ),
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
