import 'package:first_app/AppBar.dart';
import 'package:first_app/Components.dart/dashboard_page.dart';
import 'package:first_app/Components.dart/holidaychart.dart';
import 'package:first_app/Components.dart/userpage.dart';
import 'package:first_app/staff_side_drawer.dart';
import 'package:flutter/material.dart';

class StaffDashboard extends StatefulWidget {
  const StaffDashboard({super.key});

  @override
  State<StaffDashboard> createState() => _StaffDashboardState();
}

class _StaffDashboardState extends State<StaffDashboard> {
  @override
  int selectedSection = 0;
  // 0 for Dashboard, 1 for Payroll, 2 for Holiday, etc.

  void updateSection(int index) {
    setState(() {
      selectedSection = index;
    });
  }

  Widget getSelectedSectionContent() {
    switch (selectedSection) {
      case 0:
        return DashboardPage();
      case 1:
        return Userpage();
      case 6:
        return HolidayChart();

      default:
        return const SizedBox.shrink(); // Default Dashboard content
    }
  }

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Container(
            width: screenWidth,
            height: screenHeight,
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //side Drawer
                Container(
                    width: screenWidth * 0.18,
                    decoration: const BoxDecoration(color: Color(0xFF0084A1)),
                    child: StaffSideDrawer(
                      isCollapsed: false,
                      selectedIndex: 0,
                      onItemSelected: updateSection,
                    )),

                //body
                Container(
                  width: screenWidth * 0.82,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        //  height: screenHeight * 0.075,
                        height: screenHeight * 0.072,
                        width: screenWidth,
                        decoration:
                            const BoxDecoration(color: Color(0XFFF2F2F2)),
                        child: Appbar(
                          isCollapsed: false,
                          userName: 'Kavya Mittal',
                          email: 'kavya@scriza.in',
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: SizedBox(
                      //     //height: screenHeight * 0.90,
                      //     height: screenHeight * 0.90,
                      //     width: screenWidth,
                      //     child: Card(
                      //       color: Colors.white,
                      //       elevation: 10,
                      //       child: getSelectedSectionContent(),
                      //     ),
                      //   ),
                      // )
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          //height: screenHeight * 0.90,
                          height: screenHeight * 0.90,
                          width: screenWidth,
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            child: getSelectedSectionContent(),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        } else {
          return Container(
            width: screenWidth,
            height: screenHeight,
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //side Drawer
                Container(
                    width: screenWidth * 0.10,
                    decoration: const BoxDecoration(color: Color(0xFF0084A1)),
                    child: StaffSideDrawer(
                      isCollapsed: false,
                      selectedIndex: 0,
                      onItemSelected: updateSection,
                    )),

                //body
                Container(
                  width: screenWidth * 0.90,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.075,
                        width: screenWidth,
                        decoration:
                            const BoxDecoration(color: Color(0XFFF2F2F2)),
                        child: Appbar(
                          isCollapsed: false,
                          userName: 'Kavya Mittal',
                          email: 'kavya@scriza.in',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: screenHeight * 0.90,
                          width: screenWidth,
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            child: getSelectedSectionContent(),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }
      }),
    );
  }
}
