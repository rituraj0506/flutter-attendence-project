// import 'package:first_app/module.dart/holidaydata.dart';
// import 'package:flutter/material.dart';

// class HolidayChart extends StatefulWidget {
//   const HolidayChart({super.key});

//   @override
//   State<HolidayChart> createState() => _HolidayChartState();
// }

// class _HolidayChartState extends State<HolidayChart> {
//   List<Holiday> _data = List.from(holidays);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Holiday Details",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Divider(
//                 color: Colors.grey[300],
//                 thickness: 1,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     "Home",
//                     style: TextStyle(
//                       color: Colors.grey[700],
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Icon(
//                     Icons.chevron_right,
//                     color: Colors.black,
//                     size: 16,
//                   ),
//                   Text(
//                     "Holiday",
//                     style: TextStyle(
//                       color: const Color.fromRGBO(0, 125, 187, 1),
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(
//                 color: Colors.grey[300],
//                 thickness: 1,
//               ),
//               const SizedBox(height: 10),
//               Expanded(
//                 child: LayoutBuilder(
//                   builder: (context, constraints) {
//                     return SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Container(
//                         width: constraints
//                             .maxWidth, // Make the table take full width
//                         child: SingleChildScrollView(
//                           scrollDirection: Axis.vertical,
//                           child: DataTable(
//                             columnSpacing: 20,
//                             headingRowColor: MaterialStateColor.resolveWith(
//                               (states) =>
//                                   const Color.fromRGBO(0, 125, 187, 0.1),
//                             ),
//                             columns: _createColumns(),
//                             rows: _createRows(),
//                             dataRowHeight: 60,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   List<DataColumn> _createColumns() {
//     return [
//       DataColumn(
//         label: Text(
//           "Serial No",
//           style: TextStyle(
//             color: const Color.fromRGBO(0, 125, 187, 1),
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       DataColumn(
//         label: Text(
//           "Holiday Name",
//           style: TextStyle(
//             color: const Color.fromRGBO(0, 125, 187, 1),
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       DataColumn(
//         label: Text(
//           "Date",
//           style: TextStyle(
//             color: const Color.fromRGBO(0, 125, 187, 1),
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       DataColumn(
//         label: Text(
//           "Description",
//           style: TextStyle(
//             color: const Color.fromRGBO(0, 125, 187, 1),
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     ];
//   }

//   List<DataRow> _createRows() {
//     return _data.map((e) {
//       return DataRow(
//         color: (e.SerialNo == 1 || e.SerialNo == 3)
//             ? MaterialStateProperty.resolveWith((states) =>
//                 Colors.grey[200]!) // Set red background for serial no 1 and 3
//             : null,
//         cells: [
//           DataCell(
//             Text(
//               e.SerialNo.toString(),
//               style: TextStyle(
//                 color: Colors.grey[600],
//                 fontSize: 13,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           DataCell(
//             Text(
//               e.HolidayName,
//               style: TextStyle(
//                 color: Colors.grey[600],
//                 fontSize: 13,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           DataCell(
//             Text(
//               e.Date,
//               style: TextStyle(
//                 color: Colors.grey[600],
//                 fontSize: 13,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           DataCell(
//             Text(
//               e.Description,
//               style: TextStyle(
//                 color: Colors.grey[600],
//                 fontSize: 13,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//         ],
//       );
//     }).toList();
//   }
// }

// import 'package:first_app/module.dart/holidaydata.dart';
// import 'package:flutter/material.dart';

// class HolidayChart extends StatefulWidget {
//   const HolidayChart({super.key});

//   @override
//   State<HolidayChart> createState() => _HolidayChartState();
// }

// class _HolidayChartState extends State<HolidayChart> {
//   final DataTableSource _dataSource = HolidayDataTableSource();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       //backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Holiday Details",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Divider(
//                 color: Colors.grey[300],
//                 thickness: 1,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     "Home",
//                     style: TextStyle(
//                       color: Colors.grey[700],
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Icon(
//                     Icons.chevron_right,
//                     color: Colors.black,
//                     size: 16,
//                   ),
//                   Text(
//                     "Holiday",
//                     style: TextStyle(
//                       color: const Color.fromRGBO(0, 125, 187, 1),
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(
//                 color: Colors.grey[300],
//                 thickness: 1,
//               ),
//               const SizedBox(height: 10),
//               Expanded(
//                 child: LayoutBuilder(
//                   builder: (context, constraints) {
//                     return SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       // child: Container(
//                       // decoration: BoxDecoration(
//                       //   color: Colors.white,
//                       // ),
//                       child: SizedBox(
//                         // child: Container(
//                         // decoration: BoxDecoration(
//                         //   color: Colors.white,
//                         // ),
//                         width: constraints.maxWidth, // Table full width
//                         child: PaginatedDataTable(
//                           source: _dataSource,
//                           columns: _createColumns(),
//                           //  columnSpacing: 20,
//                           //  horizontalMargin: 20,
//                           rowsPerPage: 4,
//                           showFirstLastButtons: true,
//                           headingRowColor: MaterialStateColor.resolveWith(
//                             (states) => const Color.fromRGBO(0, 125, 187, 0.1),
//                           ),
//                           dataRowHeight: 60,
//                         ),
//                       ),
//                       // ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   List<DataColumn> _createColumns() {
//     return [
//       DataColumn(
//         label: Text(
//           "Serial No",
//           style: TextStyle(
//             color: const Color.fromRGBO(0, 125, 187, 1),
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       DataColumn(
//         label: Text(
//           "Holiday Name",
//           style: TextStyle(
//             color: const Color.fromRGBO(0, 125, 187, 1),
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       DataColumn(
//         label: Text(
//           "Date",
//           style: TextStyle(
//             color: const Color.fromRGBO(0, 125, 187, 1),
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       DataColumn(
//         label: Text(
//           "Description",
//           style: TextStyle(
//             color: const Color.fromRGBO(0, 125, 187, 1),
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     ];
//   }
// }

// class HolidayDataTableSource extends DataTableSource {
//   List<dynamic> data = holidays;

//   @override
//   DataRow? getRow(int index) {
//     return DataRow(
//       color: (data[index]['SerialNo'] == "1" || data[index]['SerialNo'] == "3")
//           ? MaterialStateProperty.resolveWith(
//               (states) =>
//                   Colors.grey[200], //Color.fromRGBO(242, 243, 246, 0.75),
//               //  background: rgba(242, 243, 246, 0.75);
//             )
//           : null,
//       cells: [
//         DataCell(
//           Text(
//             data[index]['SerialNo'].toString(),
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 13,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//         DataCell(
//           Text(
//             data[index]['HolidayName'],
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 13,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//         DataCell(
//           Text(
//             data[index]['Date'],
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 13,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//         DataCell(
//           Text(
//             data[index]['Description'],
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 13,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   bool get isRowCountApproximate => false;

//   @override
//   int get rowCount => data.length;

//   @override
//   int get selectedRowCount => 0;
// }

// ignore_for_file: prefer_const_constructors

import 'package:first_app/module.dart/holidaydata.dart';
import 'package:flutter/material.dart';

class HolidayChart extends StatefulWidget {
  const HolidayChart({super.key});

  @override
  State<HolidayChart> createState() => _HolidayChartState();
}

class _HolidayChartState extends State<HolidayChart> {
  final HolidayDataTableSource _dataSource = HolidayDataTableSource();
  int _rowsPerPage = 4; // Number of rows per page
  int _currentPage = 0; // Current page number

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Holiday Details",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
              Row(
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                    size: 14,
                  ),
                  Text(
                    "Holiday",
                    style: TextStyle(
                      color: const Color.fromRGBO(0, 125, 187, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: constraints.maxWidth,
                        child: DataTable(
                          columns: _createColumns(),
                          rows: _createRows(),
                          headingRowColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromRGBO(0, 125, 187, 0.1),
                          ),
                          dataRowHeight: 60,
                        ),
                      ),
                    );
                  },
                ),
              ),
              _buildCustomPagination()
            ],
          ),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: Text(
          "Serial No",
          style: TextStyle(
            color: const Color.fromRGBO(0, 125, 187, 1),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      DataColumn(
        label: Text(
          "Holiday Name",
          style: TextStyle(
            color: const Color.fromRGBO(0, 125, 187, 1),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      DataColumn(
        label: Text(
          "Date",
          style: TextStyle(
            color: const Color.fromRGBO(0, 125, 187, 1),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      DataColumn(
        label: Text(
          "Description",
          style: TextStyle(
            color: const Color.fromRGBO(0, 125, 187, 1),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      DataColumn(
        label: Text(
          "Action",
          style: TextStyle(
            color: const Color.fromRGBO(0, 125, 187, 1),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ];
  }

  List<DataRow> _createRows() {
    int startIndex = _currentPage * _rowsPerPage;
    int endIndex = startIndex + _rowsPerPage;
    endIndex =
        endIndex > _dataSource.data.length ? _dataSource.data.length : endIndex;

    return _dataSource.data
        .getRange(startIndex, endIndex)
        .map<DataRow>((data) => DataRow(
              color: (data['SerialNo'] == "1" || data['SerialNo'] == "3")
                  ? MaterialStateProperty.resolveWith(
                      (states) => Colors.grey[200])
                  : null,
              cells: [
                DataCell(Text(
                  data['SerialNo'].toString(),
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                )),
                DataCell(Text(
                  data['HolidayName'],
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                )),
                DataCell(
                  Text(
                    data['Date'],
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    data['Description'],
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                DataCell(
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.grey[600],
                      size: 18,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ))
        .toList();
  }

  Widget _buildCustomPagination() {
    int totalPages = (_dataSource.data.length / _rowsPerPage).ceil();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: _currentPage > 0
              ? () {
                  setState(() {
                    _currentPage--;
                  });
                }
              : null,
        ),
        ...List.generate(totalPages, (index) {
          return TextButton(
            onPressed: () {
              setState(() {
                _currentPage = index;
              });
            },
            child: Text(
              "${index + 1}",
              style: TextStyle(
                color: _currentPage == index ? Colors.blue : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          onPressed: _currentPage < totalPages - 1
              ? () {
                  setState(() {
                    _currentPage++;
                  });
                }
              : null,
        ),
      ],
    );
  }
}

class HolidayDataTableSource extends DataTableSource {
  List<dynamic> data = holidays;

  @override
  DataRow? getRow(int index) {
    return null;
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
