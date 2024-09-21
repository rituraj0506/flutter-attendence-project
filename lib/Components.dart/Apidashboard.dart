// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/Components.dart/smallcard.dart';
import 'package:flutter/material.dart';

class VerifyDashboard extends StatefulWidget {
  const VerifyDashboard({super.key});

  @override
  State<VerifyDashboard> createState() => _VerifyDashboardState();
}

class _VerifyDashboardState extends State<VerifyDashboard> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Card(
      elevation: 10,
      child: Container(
        width: screenWidth * 0.80,
        height: screenHeight * 0.90,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 10),
                                    child: Text(
                                      "Welcome  Scrizza",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "Wallet Balance",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "50,925.00",
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0084A1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                      ),
                                      child: Text("Add Credit"),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 22),
                              Flexible(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 22.0),
                                      child: Image.asset(
                                          'assests/images/pana.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                // Card(
                //   elevation: 10,
                //   child: Container(
                //     width: 137,
                //     height: 225,
                //     decoration: BoxDecoration(
                //       color: Color(0x80CFDFED),
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     child: Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(top: 22.0),
                //           child: Image.asset('assests/images/simg1.png'),
                //         ),
                //         const SizedBox(height: 25),
                //         Text(
                //           "Upi Verification",
                //           style: TextStyle(fontSize: 16, color: Colors.black),
                //         ),
                //         const SizedBox(
                //           height: 28,
                //         ),
                //         Text(
                //           "10",
                //           style: TextStyle(
                //             fontSize: 25,
                //             color: Color(0xFF0084A1),
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),

                SmallCard(
                  images: 'assests/images/simg1.png',
                  text1: 'Upi Verification',
                  text2: '10',
                  color: Color(0x80CFDFED),
                ),
                const SizedBox(width: 20),
                SmallCard(
                  images: 'assests/images/simg2.png',
                  text1: 'Pan Verification',
                  text2: '10',
                  color: Color(0x26FFBE9D),
                ),
                const SizedBox(width: 20),
                SmallCard(
                  images: 'assests/images/simg3.png',
                  text1: 'Rc Verification',
                  text2: '10',
                  color: Color(0xFFF1F1F1),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}



smallcard. dart 

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  SmallCard(
      {super.key,
      required this.images,
      required this.text1,
      required this.text2,
      required this.color});

  final String images;
  final String text1;
  final String text2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: 137,
        height: 225,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Image.asset(images),
            ),
            const SizedBox(height: 25),
            Text(
              text1,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFF0084A1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
