import 'package:car_app/Admin/admin_Add_notification.dart';
import 'package:car_app/Admin/admin_Login.dart';
import 'package:car_app/Admin/admin_Mechanic.dart';
import 'package:car_app/Admin/admin_NavigationBar.dart';
import 'package:car_app/Admin/admin_Notification.dart';
import 'package:car_app/Admin/admin_Payment.dart';
import 'package:car_app/Admin/admin_Tabbar.dart';
import 'package:car_app/Admin/admin_User.dart';
import 'package:car_app/Mechanic/mech_Accept_or_Reject.dart';
import 'package:car_app/Mechanic/mech_Accepted.dart';
import 'package:car_app/Mechanic/mech_Edit_Profile.dart';
import 'package:car_app/Mechanic/mech_Login.dart';
import 'package:car_app/Mechanic/mech_Notification.dart';
import 'package:car_app/Mechanic/mech_Profile.dart';
import 'package:car_app/Mechanic/mech_Rating.dart';
import 'package:car_app/Mechanic/mech_Service.dart';
import 'package:car_app/Mechanic/mech_StatusCompleted.dart';
import 'package:car_app/Mechanic/mech_Tabbar.dart';
import 'package:car_app/User/user_Login.dart';
import 'package:car_app/User/user_Mechanic_Requestlist.dart';
import 'package:car_app/User/user_Mechanic_billpage.dart';
import 'package:car_app/User/user_Mechanic_detailspage.dart';
import 'package:car_app/User/user_Mechanic_failedpage.dart';
import 'package:car_app/User/user_Mechaniclist.dart';
import 'package:car_app/User/user_Notification.dart';
import 'package:car_app/User/user_Paymentpage.dart';
import 'package:car_app/User/user_Profile.dart';
import 'package:car_app/User/user_Ratingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mechanic/mech_Navigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 892),
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // TRY THIS: Try running your application with "flutter run". You'll see
              // the application has a purple toolbar. Then, without quitting the app,
              // try changing the seedColor in the colorScheme below to Colors.green
              // and then invoke "hot reload" (save your changes or press the "hot
              // reload" button in a Flutter-supported IDE, or press "r" if you used
              // the command line to start the app).
              //
              // Notice that the counter didn't reset back to zero; the application
              // state is not lost during the reload. To reset the state, use hot
              // restart instead.
              //
              // This works for code too, not just values: Most code changes can be
              // tested with just a hot reload.
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: User_Ratingpage()));
  }
}
