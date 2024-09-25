// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// dependency 
  fl_chart: ^0.69.0 
  pie_chart: ^5.4.0
  dropdown_button2: ^2.3.8


import 'package:first_app/Components.dart/Chartcomp.dart';
import 'package:first_app/Components.dart/smallcard.dart';
import 'package:first_app/module.dart/piedata.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/rendering.dart';

class VerifyDashboard extends StatefulWidget {
  const VerifyDashboard({super.key});

  @override
  State<VerifyDashboard> createState() => _VerifyDashboardState();
}

class _VerifyDashboardState extends State<VerifyDashboard> {
  List<PieChartSectionData> getSections() => PieData.data
      .asMap()
      .map<int, PieChartSectionData>((index, data) {
        final value = PieChartSectionData(
          radius: 10,
          color: data.color,
        );

        return MapEntry(index, value);
      })
      .values
      .toList();

  final List<String> items = [
    'Today',
    'Yesterday',
    'Tommorow',
    'last Month',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SizedBox(
      height: screenHeight * 0.95,
      width: screenWidth * 0.85,
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Container(
          width: screenWidth * 0.85,
          height: screenHeight * 0.95,
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
                      child: Expanded(
                        child: Container(
                          width: screenWidth * 0.34,
                          height: screenHeight * 0.36,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          "Wallet Balance",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                      const SizedBox(height: 18),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
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
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange,
                                            foregroundColor: Colors.white,
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
                                          padding:
                                              const EdgeInsets.only(top: 22.0),
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
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SmallCard(
                      images: 'assests/images/simg1.png',
                      text1: 'Upi Verification',
                      text2: '10',
                      color: Color(0x80CFDFED),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: SmallCard(
                      images: 'assests/images/simg2.png',
                      text1: 'Pan Verification',
                      text2: '10',
                      color: Color(0x26FFBE9D),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: SmallCard(
                      images: 'assests/images/simg3.png',
                      text1: 'Rc Verification',
                      text2: '10',
                      color: Color(0xFFF1F1F1),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: screenWidth * 0.1,
                        height: screenHeight * 0.36,
                        decoration: BoxDecoration(
                          color: Color(0x80CFDFED),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 22.0),
                              child: Image.asset('assests/images/simg4.png'),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              "All API Request",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              "20",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF0084A1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            // Text(
                            //   "View Details",
                            // ),
                            TextButton(
                              onPressed: () {},
                              child: Text('View Details'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.001),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Expanded(
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: screenWidth * 0.40,
                          height: screenHeight * 0.49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 14.0, top: 10),
                                    child: Text(
                                      "Average API Hit",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, right: 5.0),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2<String>(
                                        isExpanded: true,
                                        hint: const Row(
                                          children: [
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Daily',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                        items: items
                                            .map((String item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ))
                                            .toList(),
                                        value: selectedValue,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedValue = value;
                                          });
                                        },
                                        buttonStyleData: ButtonStyleData(
                                          height: 35,
                                          width: 125,
                                          padding: const EdgeInsets.only(
                                              left: 14, right: 14),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            border: Border.all(
                                              color: Colors.black26,
                                            ),
                                            color: Colors.white,
                                            // color: Colors
                                            //     .grey[900],
                                          ),
                                          elevation: 2,
                                        ),
                                        iconStyleData: const IconStyleData(
                                          icon: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                          ),
                                          iconSize: 14,
                                          iconEnabledColor:
                                              Color.fromRGBO(97, 97, 97, 1),
                                          iconDisabledColor: Colors.grey,
                                        ),
                                        dropdownStyleData: DropdownStyleData(
                                          maxHeight: 125,
                                          width: 145,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            color: Colors.white,
                                          ),
                                          offset: const Offset(-20, 0),
                                          scrollbarTheme: ScrollbarThemeData(
                                            radius: const Radius.circular(40),
                                            thickness:
                                                MaterialStateProperty.all(6),
                                            thumbVisibility:
                                                MaterialStateProperty.all(true),
                                          ),
                                        ),
                                        menuItemStyleData:
                                            const MenuItemStyleData(
                                          height: 40,
                                          padding: EdgeInsets.only(
                                              left: 14, right: 14),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Expanded(
                                child: Chartcomp(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Expanded(
                      child: Card(
                        elevation: 10,
                        child: Expanded(
                          child: Container(
                            width: screenWidth * 0.40,
                            height: screenHeight * 0.49,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.white,
                            ),
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 14.0, top: 10),
                                          child: Text(
                                            "Most Utilize API'S",
                                            style: TextStyle(
                                                fontSize: 21,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, right: 5.0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2<String>(
                                              isExpanded: true,
                                              hint: Row(
                                                children: [
                                                  SizedBox(
                                                    // width: 4,
                                                    width: screenWidth * 0.02,
                                                  ),
                                                  const Expanded(
                                                    child: Text(
                                                      'Daily',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: items
                                                  .map((String item) =>
                                                      DropdownMenuItem<String>(
                                                        value: item,
                                                        child: Text(
                                                          item,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ))
                                                  .toList(),
                                              value: selectedValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedValue = value;
                                                });
                                              },
                                              buttonStyleData: ButtonStyleData(
                                                height: 35,
                                                width: 125,
                                                padding: const EdgeInsets.only(
                                                    left: 14, right: 14),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                  border: Border.all(
                                                    color: Colors.black26,
                                                  ),
                                                  color: Colors.white,
                                                  // color: Colors
                                                  //     .grey[900],
                                                ),
                                                elevation: 2,
                                              ),
                                              iconStyleData:
                                                  const IconStyleData(
                                                icon: Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                ),
                                                iconSize: 14,
                                                iconEnabledColor:
                                                    Color.fromRGBO(
                                                        97, 97, 97, 1),
                                                iconDisabledColor: Colors.grey,
                                              ),
                                              dropdownStyleData:
                                                  DropdownStyleData(
                                                maxHeight: 125,
                                                width: 145,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                  color: Colors.white,
                                                ),
                                                offset: const Offset(-20, 0),
                                                scrollbarTheme:
                                                    ScrollbarThemeData(
                                                  radius:
                                                      const Radius.circular(40),
                                                  thickness:
                                                      MaterialStateProperty.all(
                                                          6),
                                                  thumbVisibility:
                                                      MaterialStateProperty.all(
                                                          true),
                                                ),
                                              ),
                                              menuItemStyleData:
                                                  const MenuItemStyleData(
                                                height: 40,
                                                padding: EdgeInsets.only(
                                                    left: 14, right: 14),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: SizedBox(
                                            width: 200,
                                            height: 180,
                                            child: Stack(
                                              alignment: Alignment
                                                  .center, // Center the text
                                              children: [
                                                PieChart(
                                                  PieChartData(
                                                    sections: getSections(),
                                                    centerSpaceRadius: 58,
                                                    startDegreeOffset: 90,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    SizedBox(height: 4),
                                                    Text(
                                                      '60%',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                  ),
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                  "Today",
                                                  style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 15),
                                                ),
                                                SizedBox(
                                                    width: screenWidth * 0.02),
                                                Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blueAccent,
                                                  ),
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                  "Yesterday",
                                                  style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 5),
                                            Container(
                                                width: 180,
                                                height: 1,
                                                color: Colors.grey[500]),
                                            const SizedBox(height: 0),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 45.0),
                                                  child: Text(
                                                    "Total Api Count",
                                                    style: TextStyle(
                                                        color: Colors.grey[700],
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                const SizedBox(width: 9),
                                                Text(
                                                  "-",
                                                  style: TextStyle(
                                                      color: Colors.grey[900],
                                                      fontSize: 23,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  "138",
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 23,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                  "(↑ 138 %)",
                                                  style: TextStyle(
                                                    color: Colors.green[900],
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 28.0),
                                                      child: Image.asset(
                                                          'assests/images/group.png',
                                                          width: 20),
                                                    ),
                                                    const SizedBox(width: 10),
                                                    Text(
                                                      "BAV Hybrid V2",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey[800],
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width:
                                                            screenWidth * 0.17),
                                                    Text(
                                                      "94",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18),
                                                    ),
                                                    SizedBox(
                                                        width: screenWidth *
                                                            0.008),
                                                    Text(
                                                      "(↑ 114 %)",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.green[900],
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 3),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5.0),
                                              child: SizedBox(
                                                width: screenWidth *
                                                    0.35, // width for progress bar
                                                height: 2,
                                                child: LinearProgressIndicator(
                                                  value: 0.8,
                                                  backgroundColor: Colors.grey[
                                                      200], // Background color
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(Colors.green),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 28.0),
                                                      child: Image.asset(
                                                          'assests/images/simg2.png',
                                                          width: 20),
                                                    ),
                                                    const SizedBox(width: 10),
                                                    Text(
                                                      "Pan Comprehensive",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey[800],
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width:
                                                            screenWidth * 0.14),
                                                    Text(
                                                      "44",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18),
                                                    ),
                                                    SizedBox(
                                                        width: screenWidth *
                                                            0.008),
                                                    Text(
                                                      "(↑ 40 %)",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.green[900],
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 0.2),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5.0),
                                              child: SizedBox(
                                                width: screenWidth *
                                                    0.35, // width for progress bar
                                                height: 2,
                                                child: LinearProgressIndicator(
                                                  value: 0.4,
                                                  backgroundColor: Colors.grey[
                                                      200], // Background color
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(Colors.blue),
                                                ),
                                              ),
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
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}


 piedata.dart
  import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Blue', color: const Color(0xFF007DBB)),
    Data(name: 'lightpink', color: Colors.yellow),
  ];
}

class Data {
  final String name;

  final Color color;

  Data({required this.name, required this.color});
}


smallcard.dart
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Card(
      elevation: 10,
      child: Container(
        // width: 130,
        // height: 215,
        width: screenWidth * 0.1,
        height: screenHeight * 0.36,
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

chartcomp.dart  
 // ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chartcomp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 1:
                      return const Text('Mon');
                    case 2:
                      return const Text('Tue');
                    case 3:
                      return const Text('Wed');
                    case 4:
                      return const Text('Thu');
                    case 5:
                      return const Text('Fri');
                    default:
                      return const Text('');
                  }
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, interval: 1),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              left:
                  BorderSide(color: Colors.black), // Show left border (y-axis)
              bottom: BorderSide(
                  color: Colors.black), // Show bottom border (x-axis)
              right: BorderSide.none,
              top: BorderSide.none,
            ),
          ),
          minX: 1,
          maxX: 5,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(1, 0),
                FlSpot(1.5, 5),
                FlSpot(2, 3),
                FlSpot(2.5, 2),
                FlSpot(3, 4.2),
                FlSpot(3.5, 5.2),
                FlSpot(3.8, 4.9),
                FlSpot(4, 1.9),
                FlSpot(4.3, 4.5),
                FlSpot(4.6, 3.6),
                FlSpot(4.7, 2),
                FlSpot(4.9, 5.6),
              ],
              isCurved: true,
              color: Colors.blue,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.withOpacity(0.3),
                    Colors.blue.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
