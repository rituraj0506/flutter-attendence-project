import 'package:first_app/Components.dart/holidaychart.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StaffSideDrawer extends StatefulWidget {
  final bool isCollapsed;
  final int selectedIndex;

  final Function(int) onItemSelected;

  const StaffSideDrawer({
    super.key,
    required this.isCollapsed,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  _StaffSideDrawerState createState() => _StaffSideDrawerState();
}

class _StaffSideDrawerState extends State<StaffSideDrawer> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

    return AnimatedContainer(
      width: widget.isCollapsed ? 0 : 240,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      color: const Color(0XFF007DBB),
      child: widget.isCollapsed
          ? null
          : ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const ListTile(),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SizedBox(
                        height: 100,
                        width: 190,
                        child: Image.asset("assets/app_banner3.png")),
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                    drawerKey.currentState?.openEndDrawer();
                    Navigator.pushNamed(context, 'adminDashboard');
                  },
                ),

                // Dashboard
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                    widget.onItemSelected(0);
                    drawerKey.currentState?.openEndDrawer();
                    Navigator.pushNamed(context, 'staffDashboardPage');
                  },
                  child: ListTile(
                    leading: Icon(Icons.dashboard,
                        color: selectedIndex == 0
                            ? const Color(0XFFFFBD59)
                            : Colors.white),
                    title: Text(
                      'Dashboard',
                      style: TextStyle(
                          color: selectedIndex == 0
                              ? const Color(0XFFFFBD59)
                              : Colors.white),
                    ),
                    selected: selectedIndex == 0,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                ),

                // Company
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                    widget.onItemSelected(1);
                    drawerKey.currentState?.openEndDrawer();
                    Navigator.pushNamed(context, 'staffDashboardPage');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 18,
                      color: selectedIndex == 1
                          ? const Color(0XFFFFBD59)
                          : Colors.white,
                    ),
                    title: Text(
                      'User',
                      style: TextStyle(
                          color: selectedIndex == 1
                              ? const Color(0XFFFFBD59)
                              : Colors.white),
                    ),
                    selected: selectedIndex == 1,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                ),

                // Subscription
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 18,
                    color: selectedIndex == 2
                        ? const Color(0XFFFFBD59)
                        : Colors.white,
                  ),
                  title: Text(
                    'Attendance',
                    style: TextStyle(
                        color: selectedIndex == 2
                            ? const Color(0XFFFFBD59)
                            : Colors.white),
                  ),
                  selected: selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                    drawerKey.currentState?.openEndDrawer();
                    Navigator.pushNamed(context, 'adminDashboard');
                  },
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                ),

                // Announcement
                ListTile(
                  leading: Icon(Icons.person,
                      size: 18,
                      color: selectedIndex == 3
                          ? const Color(0XFFFFBD59)
                          : Colors.white),
                  title: Text(
                    'Leave',
                    style: TextStyle(
                        color: selectedIndex == 3
                            ? const Color(0XFFFFBD59)
                            : Colors.white),
                  ),
                  selected: selectedIndex == 3,
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                    drawerKey.currentState?.openEndDrawer();
                    Navigator.pushNamed(context, 'adminDashboard');
                  },
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                ),

                // Notification
                ListTile(
                  leading: Icon(Icons.paypal,
                      size: 18,
                      color: selectedIndex == 4
                          ? const Color(0XFFFFBD59)
                          : Colors.white),
                  title: Text(
                    'Payroll',
                    style: TextStyle(
                        color: selectedIndex == 4
                            ? const Color(0XFFFFBD59)
                            : Colors.white),
                  ),
                  selected: selectedIndex == 4,
                  onTap: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                    drawerKey.currentState?.openEndDrawer();
                    Navigator.pushNamed(context, 'adminDashboard');
                  },
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                ),

                // Notification
                ListTile(
                  leading: Icon(FontAwesomeIcons.volumeHigh,
                      size: 18,
                      color: selectedIndex == 5
                          ? const Color(0XFFFFBD59)
                          : Colors.white),
                  title: Text(
                    'Announcement',
                    style: TextStyle(
                        color: selectedIndex == 5
                            ? const Color(0XFFFFBD59)
                            : Colors.white),
                  ),
                  selected: selectedIndex == 5,
                  onTap: () {
                    setState(() {
                      selectedIndex = 5;
                    });
                    drawerKey.currentState?.openEndDrawer();
                    Navigator.pushNamed(context, 'adminDashboard');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                ),

                // Notification
                ListTile(
                  leading: Icon(FontAwesomeIcons.umbrellaBeach,
                      size: 18,
                      color: selectedIndex == 6
                          ? const Color(0XFFFFBD59)
                          : Colors.white),
                  title: Text(
                    'Holiday',
                    style: TextStyle(
                        color: selectedIndex == 6
                            ? const Color(0XFFFFBD59)
                            : Colors.white),
                  ),
                  selected: selectedIndex == 6,
                  onTap: () {
                    setState(() {
                      selectedIndex = 6;
                    });
                    widget.onItemSelected(6);
                    drawerKey.currentState?.openEndDrawer();
                  },
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      logoutUser(context);
                    },
                  ),
                )
              ],
            ),
    );
  }

  Future<void> logoutUser(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Clears all data from SharedPreferences
    Navigator.pushReplacementNamed(context, 'login');
  }
}
