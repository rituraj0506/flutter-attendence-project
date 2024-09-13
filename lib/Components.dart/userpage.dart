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




// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  final textfield = TextEditingController();

  void clearText() {
    textfield.clear();
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight * 0.90,
        // height: screenHeight,
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
              Expanded(
                child: ListView(
                  children: [
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
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      
                                      controller: textfield,
                                      
                                      decoration: InputDecoration(
                                        hintText: "Enter Name",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                  Container(
                                    height: 38,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Row(
                                      children: [
                                        // "Choose File" Button
                                        TextButton(
                                          onPressed: () {
                                            // Add file picker logic here
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.grey[200],
                                            padding: EdgeInsets.only(left: 1),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius
                                                  .zero, // No border radius
                                            ),
                                          ),
                                          child: Text(
                                            "Choose File",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        const SizedBox(
                                            width:
                                                10), // Space between button and text
                                        Text(
                                          "No File Chosen",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
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
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Employee Id",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Address",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Mobile Number",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Secondary Mobile Number",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Mobile Number",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Email Id",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Email Id ",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Joining Date",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, // Label color
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    child: TextFormField(
                                      readOnly:
                                          true, // Prevents the keyboard from appearing
                                      decoration: InputDecoration(
                                        hintText: "Select Joining Date",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
                                        border: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(10),
                                            ),
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.calendar_today),
                                          onPressed: () async {
                                            // Open the date picker dialog
                                            DateTime? selectedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2100),
                                            );

                                            if (selectedDate != null) {
                                              // Format and update the selected date in the TextFormField
                                              String formattedDate =
                                                  "${selectedDate.toLocal()}"
                                                      .split(' ')[0];
                                              setState(() {
                                                // Update the hint text or any state variable if needed
                                              });
                                            }
                                          },
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
                                    "Bond",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38, // Adjust the height as needed
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
                                        border: OutlineInputBorder(),
                                      ),
                                      hint: Text("Select Year"),
                                      value:
                                          null, // The initial value is null to show the hint text
                                      items: [
                                        DropdownMenuItem(
                                          value: 'Select Year',
                                          child: Text('Select Year'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2022',
                                          child: Text('2022'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2023',
                                          child: Text('2023'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2024',
                                          child: Text('2024'),
                                        ),
                                        // Add more years as needed
                                      ],
                                      onChanged: (String? newValue) {
                                        // Handle the dropdown selection here
                                        print("Selected Year: $newValue");
                                      },
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
                                    "Security Amount",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Amount",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Role",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38, // Adjust the height as needed
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
                                        border: OutlineInputBorder(),
                                      ),
                                      hint: Text("Select Role"),
                                      value:
                                          null, // The initial value is null to show the hint text
                                      items: [
                                        DropdownMenuItem(
                                          value: 'Select Role',
                                          child: Text('Select Role'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Software Devloper',
                                          child: Text('Software Devloper'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Busineess Analyst',
                                          child: Text('Busineess Analyst'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'HR',
                                          child: Text('HR'),
                                        ),
                                        // Add more years as needed
                                      ],
                                      onChanged: (String? newValue) {
                                        // Handle the dropdown selection here
                                        print("Selected Year: $newValue");
                                      },
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
                                    "Status",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, // Label color
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38, // Adjust the height as needed
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
                                        border: OutlineInputBorder(),
                                      ),
                                      hint: Text("Select Status"),
                                      value:
                                          null, // The initial value is null to show the hint text
                                      items: [
                                        DropdownMenuItem(
                                          value: 'Select Status',
                                          child: Text('Select Status'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2022',
                                          child: Text('2022'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2023',
                                          child: Text('2023'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2024',
                                          child: Text('2024'),
                                        ),
                                        // Add more years as needed
                                      ],
                                      onChanged: (String? newValue) {
                                        // Handle the dropdown selection here
                                        print("Selected Year: $newValue");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),
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
                              "Family Details",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Father's Name",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Father Name",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Fathers Occupation",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Father Occupation",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Mother's Name",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Mother's Name",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Mother's Occupation",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Mother's Occupation",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                            const SizedBox(height: 4),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Child1 Name",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, // Label color
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Child1 Name",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Child1 Age",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, // Label color
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Child1 Age",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Child2 Name",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, // Label color
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Child2 Name",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Child2 Age",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, // Label color
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Child2 Age",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                            const SizedBox(height: 4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fathers Contact Number",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black, // Label color
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: 38,
                                  width: 250,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Contact Number",
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 10.0),
                                      border: OutlineInputBorder(
                                          //   borderRadius: BorderRadius.circular(10),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mothers Contact number",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black, // Label color
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: 38,
                                  width: 250,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Contact Number",
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 10.0),
                                      border: OutlineInputBorder(
                                          //   borderRadius: BorderRadius.circular(10),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),
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
                              "Document Details",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aadhar Card",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Aadhar Card",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Upload Aadhar Card -Front side",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 38,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          color: Colors
                                              .grey), // Simple border without radius
                                    ),
                                    child: Row(
                                      children: [
                                        // "Choose File" Button
                                        TextButton(
                                          onPressed: () {
                                            // Add file picker logic here
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors
                                                .grey[200], // Background color
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius
                                                  .zero, // No border radius
                                            ),
                                          ),
                                          child: Text(
                                            "Choose File",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        const SizedBox(
                                            width:
                                                10), // Space between button and text
                                        Text(
                                          "No File Chosen",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
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
                                    "Upload Aadhar Card -Back Side",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 38,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          color: Colors
                                              .grey), // Simple border without radius
                                    ),
                                    child: Row(
                                      children: [
                                        // "Choose File" Button
                                        TextButton(
                                          onPressed: () {
                                            // Add file picker logic here
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors
                                                .grey[200], // Background color
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius
                                                  .zero, // No border radius
                                            ),
                                          ),
                                          child: Text(
                                            "Choose File",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        const SizedBox(
                                            width:
                                                10), // Space between button and text
                                        Text(
                                          "No File Chosen",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),

                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(
                        //             "Pan Card",
                        //             style: TextStyle(
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.w500,
                        //               color: Colors.black,
                        //             ),
                        //           ),
                        //           const SizedBox(height: 5),
                        //           SizedBox(
                        //             height: 38,
                        //             //width: 150,
                        //             child: TextFormField(
                        //               decoration: InputDecoration(
                        //                 hintText: "Enter Pan Number",
                        //                 contentPadding: EdgeInsets.symmetric(
                        //                     vertical: 8.0, horizontal: 10.0),
                        //                 border: OutlineInputBorder(
                        //                     //   borderRadius: BorderRadius.circular(10),
                        //                     ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     const SizedBox(width: 4),
                        //     Expanded(
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(
                        //             "Upload Pan Card",
                        //             style: TextStyle(
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.w500,
                        //               color: Colors.black,
                        //             ),
                        //           ),
                        //           const SizedBox(height: 5),
                        //           Container(
                        //             height: 38,
                        //             padding:
                        //                 EdgeInsets.symmetric(horizontal: 8),
                        //             decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(4),
                        //               border: Border.all(
                        //                   color: Colors
                        //                       .grey), // Simple border without radius
                        //             ),
                        //             child: Row(
                        //               children: [
                        //                 // "Choose File" Button
                        //                 TextButton(
                        //                   onPressed: () {
                        //                     // Add file picker logic here
                        //                   },
                        //                   style: TextButton.styleFrom(
                        //                     backgroundColor: Colors
                        //                         .grey[200], // Background color
                        //                     padding: EdgeInsets.symmetric(
                        //                         horizontal: 16),
                        //                     shape: RoundedRectangleBorder(
                        //                       borderRadius: BorderRadius
                        //                           .zero, // No border radius
                        //                     ),
                        //                   ),
                        //                   child: Text(
                        //                     "Choose File",
                        //                     style:
                        //                         TextStyle(color: Colors.black),
                        //                   ),
                        //                 ),
                        //                 const SizedBox(
                        //                     width:
                        //                         10), // Space between button and text
                        //                 Text(
                        //                   "No File Chosen",
                        //                   style: TextStyle(
                        //                     color: Colors.grey,
                        //                     fontSize: 14,
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),

                        Row(
                          children: [
                            const SizedBox(height: 4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pan Card",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black, // Label color
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: 38,
                                  width: 330,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Pan Number",
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 10.0),
                                      border: OutlineInputBorder(
                                          //   borderRadius: BorderRadius.circular(10),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Upload Pan Card",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  height: 38,
                                  width: 330,
                                  padding: EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        color: Colors
                                            .grey), // Simple border without radius
                                  ),
                                  child: Row(
                                    children: [
                                      // "Choose File" Button
                                      TextButton(
                                        onPressed: () {
                                          // Add file picker logic here
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors
                                              .grey[200], // Background color
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius
                                                .zero, // No border radius
                                          ),
                                        ),
                                        child: Text(
                                          "Choose File",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      const SizedBox(
                                          width:
                                              10), // Space between button and text
                                      Text(
                                        "No File Chosen",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                    "Insurance Company",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38, // Adjust the height as needed
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
                                        border: OutlineInputBorder(),
                                      ),
                                      hint: Text("Select Ensurance Company"),
                                      value:
                                          null, // The initial value is null to show the hint text
                                      items: [
                                        DropdownMenuItem(
                                          value: 'Select Ensurance Company',
                                          child:
                                              Text('Select Ensurance Company'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2022',
                                          child: Text('2022'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2023',
                                          child: Text('2023'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2024',
                                          child: Text('2024'),
                                        ),
                                        // Add more years as needed
                                      ],
                                      onChanged: (String? newValue) {
                                        // Handle the dropdown selection here
                                        print("Selected Year: $newValue");
                                      },
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
                                    "Insurance Number",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Insurance Number",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
                                        border: OutlineInputBorder(
                                            //   borderRadius: BorderRadius.circular(10),
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const SizedBox(width: 4),

                            const SizedBox(width: 4),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Upload Insurance Document",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 38,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          color: Colors
                                              .grey), // Simple border without radius
                                    ),
                                    child: Row(
                                      children: [
                                        // "Choose File" Button
                                        TextButton(
                                          onPressed: () {
                                            // Add file picker logic here
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors
                                                .grey[200], // Background color
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius
                                                  .zero, // No border radius
                                            ),
                                          ),
                                          child: Text(
                                            "Choose File",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        const SizedBox(
                                            width:
                                                10), // Space between button and text
                                        Text(
                                          "No File Chosen",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),
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
                              "Bank Details",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Select Bank",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38, // Adjust the height as needed
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
                                        border: OutlineInputBorder(),
                                      ),
                                      hint: Text("Select Bank"),
                                      value:
                                          null, // The initial value is null to show the hint text
                                      items: [
                                        DropdownMenuItem(
                                          value: 'Select Bank',
                                          child: Text('Select Bank'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'State Bank',
                                          child: Text('State Bank'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'UCo Bank',
                                          child: Text('Uco Bank'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Hdfc Bank',
                                          child: Text('Hdfc Bank'),
                                        ),
                                        // Add more years as needed
                                      ],
                                      onChanged: (String? newValue) {
                                        // Handle the dropdown selection here
                                        print("Selected Year: $newValue");
                                      },
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
                                    "Account Number",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Account Number",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Bank Type",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38, // Adjust the height as needed
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
                                        border: OutlineInputBorder(),
                                      ),
                                      hint: Text("Select Role"),
                                      value:
                                          null, // The initial value is null to show the hint text
                                      items: [
                                        DropdownMenuItem(
                                          value: 'Select Bank Type',
                                          child: Text('Select Bank Type'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Government',
                                          child: Text('Government'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Private',
                                          child: Text('Private'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'HR',
                                          child: Text('HR'),
                                        ),
                                        // Add more years as needed
                                      ],
                                      onChanged: (String? newValue) {
                                        // Handle the dropdown selection here
                                        print("Selected Year: $newValue");
                                      },
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
                                    "IFSC Code",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, // Label color
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter IFSC Code",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                                    "Branch Name",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, // Label color
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 38,
                                    //width: 150,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter Branch Name",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 10.0),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 120,
                              height: 40,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue,
                                  side: BorderSide(color: Colors.blue),
                                ),
                                child: Text("Submit"),
                              ),
                            ),
                            const SizedBox(width: 2),
                            SizedBox(
                              width: 120,
                              height: 40,
                              child: OutlinedButton(
                                onPressed: () => clearText(),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue,
                                  side: BorderSide(color: Colors.blue),
                                ),
                                child: Text("Clear"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

