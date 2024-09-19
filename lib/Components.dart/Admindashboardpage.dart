// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:attendance_software/model/piedata.dart';
import 'package:attendance_software/screens/admin/admin_side_drawer_page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../components/AppBar.dart';
import '../../components/super_admin_side_drawer.dart';


class Admindashboard extends StatefulWidget {
  const Admindashboard({super.key});
  
  @override
  State<Admindashboard> createState() => _AdmindashboardState();
}

class _AdmindashboardState extends State<Admindashboard> {
  
  List<PieChartSectionData> getSections() => PieData.data
      .asMap()
      .map<int, PieChartSectionData>((index, data) {
        final value = PieChartSectionData(
          color: data.color,
          value: data.percent,
          title: '${data.percent}',
          titleStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
          ),
        );

        return MapEntry(index, value);
      })
      .values
      .toList();

 
  @override
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
                    child: const AdminSideDrawer(isCollapsed: false, selectedIndex: 0)),

                //body
                Container(
                  width: screenWidth * 0.82,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight*0.075,
                        width: screenWidth,
                        decoration:
                        const BoxDecoration(color: Color(0XFFF2F2F2)),
                        child: Appbar(isCollapsed: false, userName: 'Kavya Mittal',email: 'kavya@scriza.in',),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          // height: screenHeight*0.90,
                          height: screenHeight * 0.89,
                          width: screenWidth,
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            child: Container(
                              height: screenHeight * 0.89,
                              width: screenWidth,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Card(
                                          elevation: 10,
                                          child: Container(
                                            width: screenWidth * 0.16,
                                            height: screenHeight * 0.28,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xFFCEE6F1),
                                                  Color(0xFFD5EAF3),
                                                  Color(0xFFE1EFF7),
                                                  Color(0xFFF2F9FB),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Flexible(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(12.0),
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            "Total HR",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 24),
                                                      const Text(
                                                        "15",
                                                        style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 24),
                                                      const Text(
                                                        "ViewAll",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.blue,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          decorationColor:
                                                              Color.fromRGBO(0,
                                                                  125, 187, 1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Flexible(
                                                  // flex: 1,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 55.0,
                                                            top: 20),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/pimg1.png',
                                                          width: 80,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Expanded(
                                        child: Card(
                                          elevation: 10,
                                          child: Container(
                                            width: screenWidth * 0.16,
                                            height: screenHeight * 0.28,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xFFCEE6F1),
                                                  Color(0xFFD5EAF3),
                                                  Color(0xFFE1EFF7),
                                                  Color(0xFFF2F9FB),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                // Text and values column
                                                Flexible(
                                                  // flex: 2, // More space for text
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(12.0),
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            "Total Staff",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 24),
                                                      const Text(
                                                        "17",
                                                        style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 24),
                                                      const Text(
                                                        "ViewAll",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.blue,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          decorationColor:
                                                              Color.fromRGBO(0,
                                                                  125, 187, 1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                Flexible(
                                                  // flex: 1,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0,
                                                            top: 20),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/pimg2.png',
                                                          width: 75,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Expanded(
                                        child: Card(
                                          elevation: 10,
                                          child: Container(
                                            width: screenWidth * 0.16,
                                            height: screenHeight * 0.28,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xFFCEE6F1),
                                                  Color(0xFFD5EAF3),
                                                  Color(0xFFE1EFF7),
                                                  Color(0xFFF2F9FB),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                const Flexible(
                                                  flex: 2,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            12.0),
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            "Total Accountant",
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 24),
                                                      Text(
                                                        "17",
                                                        style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                      SizedBox(height: 24),
                                                      Text(
                                                        "ViewAll",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.blue,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          decorationColor:
                                                              Color.fromRGBO(0,
                                                                  125, 187, 1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 1,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 0.0, top: 20),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/pimg3.png',
                                                          width: 75,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Expanded(
                                        child: Card(
                                          elevation: 10,
                                          child: Container(
                                            width: screenWidth * 0.16,
                                            height: screenHeight * 0.28,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xFFCEE6F1),
                                                  Color(0xFFD5EAF3),
                                                  Color(0xFFE1EFF7),
                                                  Color(0xFFF2F9FB),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                // Text and values column
                                                const Flexible(
                                                  flex: 2,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            12.0),
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            "Freedge Salary",
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 24),
                                                      Text(
                                                        "20,500",
                                                        style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                      SizedBox(height: 24),
                                                      Text(
                                                        "ViewAll",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.blue,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          decorationColor:
                                                              Color.fromRGBO(0,
                                                                  125, 187, 1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                Flexible(
                                                  flex: 1,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 0.0, top: 20),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/pimg4.png',
                                                          width: 75,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      //const SizedBox(height: 40),
                                    ],
                                  ),
                                  const SizedBox(height: 34),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Card(
                                          elevation: 10,
                                          child: Container(
                                            width: screenWidth * 0.38,
                                            height: screenHeight * 0.44,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 14.0,
                                                              top: 10),
                                                      child: Text(
                                                        "Attendance",
                                                        style: TextStyle(
                                                            fontSize: 21,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: OutlinedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          foregroundColor:
                                                              Colors.grey[800],
                                                          backgroundColor:
                                                              Colors.white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                        child: Text("week"),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 30),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: SizedBox(
                                                        width: 200,
                                                        height: 180,
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .center, // Center the text
                                                          children: [
                                                            PieChart(
                                                              PieChartData(
                                                                sections:
                                                                    getSections(),
                                                                centerSpaceRadius:
                                                                    52,
                                                              ),
                                                            ),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: const [
                                                                Text(
                                                                  'Total',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black26,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    height: 4),
                                                                Text(
                                                                  '235',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 30),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  "In Office",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          700],
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                                Text(
                                                                  "55%",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          900],
                                                                      fontSize:
                                                                          25,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                                const SizedBox(
                                                                    height: 5),
                                                                Text(
                                                                  "On Leave",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          700],
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                                Text(
                                                                  "27%",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          900],
                                                                      fontSize:
                                                                          25,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                                width: 50),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  "Half Day",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          700],
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                                Text(
                                                                  "8%",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          900],
                                                                      fontSize:
                                                                          25,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                                const SizedBox(
                                                                    height: 5),
                                                                Text(
                                                                  "Work From Home",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          700],
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                                Text(
                                                                  "10%",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          900],
                                                                      fontSize:
                                                                          25,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Card(
                                          elevation: 10,
                                          child: Container(
                                            width: screenWidth * 0.38,
                                            height: screenHeight * 0.44,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(18.0),
                                                      child: Text(
                                                        "Notification",
                                                        style: TextStyle(
                                                            fontSize: 21,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(18.0),
                                                      child: Text(
                                                        "View All",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color.fromRGBO(
                                                              0, 125, 187, 1),
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          decorationColor:
                                                              Color.fromRGBO(0,
                                                                  125, 187, 1),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: ListView.builder(
                                                    itemCount: 2,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal:
                                                                    16.0,
                                                                vertical: 8.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Text(
                                                              "Zero Tolerance Policy Regarding to Work on Other Company's...",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color:
                                                                    Colors.blue,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 4),
                                                            const Text(
                                                              "Dear All Employees,\nVery Important information for all of you regarding working on...",
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                            const SizedBox(
                                                                height: 6),
                                                            const Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "09 May 2:16 PM",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10,
                                                                      color: Colors
                                                                          .grey),
                                                                ),
                                                                // Text(
                                                                //   "Policy",
                                                                //   style: TextStyle(
                                                                //       fontSize: 10, color: Colors.grey),
                                                                // ),
                                                                Row(
                                                                  children: [
                                                                    CircleAvatar(
                                                                      backgroundImage:
                                                                          AssetImage(
                                                                              'assets/images/user_avatar.png'),
                                                                      radius:
                                                                          10,
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            4),
                                                                    Text(
                                                                      "Manish Gupta",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              10,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(
                                                                color: Colors
                                                                    .grey[300],
                                                                thickness: 1),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ], // children
                              ),
                            ),
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
                    child: const AdminSideDrawer(isCollapsed: false, selectedIndex: 0,)),

                //body
                Container(
                  width: screenWidth * 0.90,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight*0.075,
                        width: screenWidth,
                        decoration:
                        const BoxDecoration(color: Color(0XFFF2F2F2)),
                        child: Appbar(isCollapsed: false, userName: 'Kavya Mittal',email: 'kavya@scriza.in',),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: screenHeight*0.90,
                          width: screenWidth,
                          child: const Card(
                            color: Colors.white,
                            elevation: 10,
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
