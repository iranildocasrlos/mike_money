import 'package:flutter/material.dart';
import 'package:mike_money/View/appointment.dart';
import 'package:mike_money/View/home_page.dart';
import 'package:mike_money/ViewModel/splash_page.dart';
import 'package:mike_money/ViewModel/tabble_calendar.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash" : (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/table": (context) => MyTableCalendar(),
        "/appointment": (context) => Appointment()
      },
      home: SplashPage()
    );

  }
}
