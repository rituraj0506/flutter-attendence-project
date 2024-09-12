// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[100],
              // color: Colors.white70,
            ),
            height: screenHeight * 0.90,
            width: screenWidth,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 18.0,
                    right: 18.0,
                    top: 18.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("Check In"),
                      ),
                      // OutlinedButton(
                      //   onPressed: () {},
                      //   style: OutlinedButton.styleFrom(
                      //     foregroundColor: Colors.white,
                      //     backgroundColor: Colors.blue,
                      //   ),
                      //   child: Text("Apply Leave"),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          //  width: 270,
                          // height: 181,
                          width: screenWidth * 0.18,
                          // height: screenHeight * 0.30,
                          height: screenHeight * 0.28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFCEE6F1),
                                Color(0xFFD5EAF3),
                                Color(0xFFE1EFF7),
                                Color(0xFFF2F9FB),
                              ],
                              begin: Alignment
                                  .topLeft, // Start position of the gradient
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "Total HR",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    "15",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    "ViewAll",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          Color.fromRGBO(0, 125, 187, 1),
                                    ),
                                  ),
                                ],
                              ),

                              // 2nd column
                              Padding(
                                //padding: const EdgeInsets.only(left: 50.0, top: 50),
                                padding:
                                    const EdgeInsets.only(left: 45.0, top: 50),
                                child: Column(
                                  children: [
                                    // Image.asset('assests/images/cimg1.png', width: 85),
                                    Image.asset('assests/images/cimg1.png',
                                        width: 65),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Card(
                        elevation: 10,
                        child: Container(
                          // width: 270,
                          // height: 181,
                          width: screenWidth * 0.18,
                          // height: screenHeight * 0.30,
                          height: screenHeight * 0.28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFCEE6F1),
                                Color(0xFFD5EAF3),
                                Color(0xFFE1EFF7),
                                Color(0xFFF2F9FB),
                              ],
                              begin: Alignment
                                  .topLeft, // Start position of the gradient
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "Total Staff",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    "25",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    "ViewAll",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          Color.fromRGBO(0, 125, 187, 1),
                                    ),
                                  ),
                                ],
                              ),

                              // 2nd column
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, top: 50, right: 8.0),
                                child: Column(
                                  children: [
                                    // Image.asset('assests/images/cimg2.png', width: 85),
                                    Image.asset('assests/images/cimg2.png',
                                        width: 65),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Card(
                        elevation: 10,
                        child: Container(
                          // width: 270,
                          // //width: 284,
                          // height: 181,
                          width: screenWidth * 0.19,
                          height: screenHeight * 0.28,
                          //   height: screenHeight * 0.30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFCEE6F1),
                                Color(0xFFD5EAF3),
                                Color(0xFFE1EFF7),
                                Color(0xFFF2F9FB),
                              ],
                              begin: Alignment
                                  .topLeft, // Start position of the gradient
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 12.0),
                                    child: Text(
                                      "Total Accountant",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 27),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "25",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    "ViewAll",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          Color.fromRGBO(0, 125, 187, 1),
                                    ),
                                  ),
                                ],
                              ),

                              // 2nd column
                              Padding(
                                //padding: const EdgeInsets.only(top: 60),
                                padding: const EdgeInsets.only(top: 50),
                                child: Column(
                                  children: [
                                    // Image.asset('assests/images/cimg3.png', width: 85),
                                    Image.asset('assests/images/cimg3.png',
                                        width: 65),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Card(
                        elevation: 10,
                        child: Container(
                          // width: 270,
                          // height: 181,
                          width: screenWidth * 0.19,
                          height: screenHeight * 0.28,
                          // height: screenHeight * 0.30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFCEE6F1),
                                Color(0xFFD5EAF3),
                                Color(0xFFE1EFF7),
                                Color(0xFFF2F9FB),
                              ],
                              begin: Alignment
                                  .topLeft, // Start position of the gradient
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "Freedge Salary",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    "20,500",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 23),
                                  Text(
                                    "ViewAll",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          Color.fromRGBO(0, 125, 187, 1),
                                    ),
                                  ),
                                ],
                              ),

                              // 2nd column
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 50),
                                child: Column(
                                  children: [
                                    // Image.asset('assests/images/cimg4.png', width: 85),
                                    Image.asset('assests/images/cimg4.png',
                                        width: 65),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      //const SizedBox(height: 40),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 1.0),
                      child: Container(
                        // width: 585,
                        //height: 280,
                        width: screenWidth * 0.40,
                        height: 255,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      "Holiday Details",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      "View All",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromRGBO(
                                            0, 125, 187, 1),
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            Color.fromRGBO(0, 125, 187, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 180,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Container(
                                            // width: 545,
                                            //height: 46,
                                            width: screenWidth * 0.38,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1.0,
                                                color: const Color.fromRGBO(
                                                    221, 221, 235, 0.6),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0),
                                                  child: Text(
                                                    "Puri Rath Yatra",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 18.0),
                                                  child: Text(
                                                    "07-jul-2024",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue[400],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Container(
                                            //width: 545,
                                            //height: 46,
                                            width: screenWidth * 0.38,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1.0,
                                                color: const Color.fromRGBO(
                                                    221, 221, 235, 0.6),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0),
                                                  child: Text(
                                                    "Vishwakarma Puja",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 18.0),
                                                  child: Text(
                                                    "16-sep-2024",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue[400],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Container(
                                            // width: 545,
                                            // height: 46,
                                            width: screenWidth * 0.38,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1.0,
                                                color: const Color.fromRGBO(
                                                    221, 221, 235, 0.6),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0),
                                                  child: Text(
                                                    "Sharad Puja",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 18.0),
                                                  child: Text(
                                                    "16-Oct-2024",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue[400],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Container(
                                            // width: 545,
                                            // height: 46,
                                            width: screenWidth * 0.38,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1.0,
                                                color: const Color.fromRGBO(
                                                    221, 221, 235, 0.6),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0),
                                                  child: Text(
                                                    "Diwali",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 18.0),
                                                  child: Text(
                                                    "01-Nov-2024",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue[400],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Container(
                                            // width: 545,
                                            // height: 46,
                                            width: screenWidth * 0.38,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1.0,
                                                color: const Color.fromRGBO(
                                                    221, 221, 235, 0.6),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0),
                                                  child: Text(
                                                    "Diwali",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 18.0),
                                                  child: Text(
                                                    "01-Nov-2024",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.blue[400],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.38,
                      height: 255,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                  "Notification",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color.fromRGBO(0, 125, 187, 1),
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Color.fromRGBO(0, 125, 187, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Zero Tolerance Policy Regarding to Work on Other Company's...",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Dear All Employees,\nVery Important information for all of you regarding working on...",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "09 May 2:16 PM",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                          // Text(
                                          //   "Policy",
                                          //   style: TextStyle(
                                          //       fontSize: 10, color: Colors.grey),
                                          // ),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/images/user_avatar.png'),
                                                radius: 10,
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                "Manish Gupta",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Divider(
                                          color: Colors.grey[300],
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
