// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight * 0.90,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, top: 18.0, bottom: 8.0),
                child: Text(
                  "Add Employee",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey[500],
                    size: 14,
                  ),
                  Text(
                    "User",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[800]),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey[500],
                    size: 14,
                  ),
                  Text(
                    "Employee",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Divider(
                color: Colors.grey[200],
                thickness: 1,
              ),
              const SizedBox(height: 5),
              Container(
                width: screenWidth,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Colors.blue[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Personal Details",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 40,
                              //width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Name",
                                  border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Profile Photo",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 40,
                              //width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Employee Id",
                                  border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Employee Id",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 40,
                              //width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Employee Name",
                                  border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black, // Label color
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 40,
                              //width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Adress",
                                  border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile Number",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 35,
                              //width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Mobile No",
                                  border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(10),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Profile Photo",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Employee Id",
                                border: OutlineInputBorder(
                                    //   borderRadius: BorderRadius.circular(10),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Employee Id",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Employee Id",
                                border: OutlineInputBorder(
                                    // borderRadius: BorderRadius.circular(10),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black, // Label color
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Address",
                                border: OutlineInputBorder(
                                    // borderRadius: BorderRadius.circular(10),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Name",
                                border: OutlineInputBorder(
                                    //   borderRadius: BorderRadius.circular(10),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Profile Photo",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Employee Id",
                                border: OutlineInputBorder(
                                    //   borderRadius: BorderRadius.circular(10),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Employee Id",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Employee Id",
                                border: OutlineInputBorder(
                                    // borderRadius: BorderRadius.circular(10),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black, // Label color
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Address",
                                border: OutlineInputBorder(
                                    // borderRadius: BorderRadius.circular(10),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
