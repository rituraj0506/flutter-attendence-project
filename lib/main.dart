// ignore_for_file: prefer_const_constructors
import "package:first_app/Components.dart/dashboard_page.dart";
import "package:first_app/Components.dart/holidaychart.dart";
import "package:first_app/staff_dashboard.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StaffDashboard(),
      home: Scaffold(
        backgroundColor: Colors.white,
        // body: HolidayChart(),
        body: StaffDashboard(),
        // body: DashboardPage(),
      ),
    );
  }
}
