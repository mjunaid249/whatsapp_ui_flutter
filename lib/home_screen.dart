// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 80,
          title: Text(
            'WhatsApp',
            style: GoogleFonts.poppins(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,
          bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.symmetric(vertical: 5),
              labelStyle: GoogleFonts.poppins(fontSize: 18),
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Calls')),
              ]),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: '1',
                    child: Text(
                      'New Group',
                      style: GoogleFonts.poppins(color: Colors.black),
                    )),
                PopupMenuItem(
                    value: '2',
                    child: Text(
                      'Settings',
                      style: GoogleFonts.poppins(color: Colors.black),
                    )),
                PopupMenuItem(
                    value: '3',
                    child: Text(
                      'Log out',
                      style: GoogleFonts.poppins(color: Colors.black),
                    )),
              ],
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Ben Stokes',
                      style: GoogleFonts.poppins(),
                    ),
                    subtitle: Text(
                      'Welcome to Flutter!',
                      style: GoogleFonts.poppins(),
                    ),
                    trailing: Text(
                      '8:14 AM',
                      style: GoogleFonts.poppins(),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text(
                        'Ben Stokes',
                        style: GoogleFonts.poppins(),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            '3 hours ago',
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '8:17 PM',
                        style: GoogleFonts.poppins(),
                      ));
                }),
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Ben Stokes',
                      style: GoogleFonts.poppins(),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_missed,
                          color: Colors.redAccent,
                        ),
                        Text(
                          index / 2 == 0
                              ? 'Missed Voice Call'
                              : "Missed Video Call",
                          style: GoogleFonts.poppins(),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      index / 2 == 0 ? Icons.call : Icons.video_call,
                      color: Colors.teal,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
