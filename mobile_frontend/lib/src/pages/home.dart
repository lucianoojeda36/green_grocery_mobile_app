// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:green_grocery/src/pages/chat.dart';
import 'package:green_grocery/src/pages/dashboard.dart';
import 'package:green_grocery/src/pages/profile.dart';
import 'package:green_grocery/src/pages/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  Widget currentScreen = Dashboard();

  void _onItemTapped(int index) {
    setState(() {
      currentTab = index;
    });
  }

  final List<Widget> screens = [
    Dashboard(),
    Chat(),
    Profile(),
    Settings(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageStorage(
        child: screens[currentTab],
        bucket: bucket,
      ),
      
   
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.teal[600],
        child: Icon(Icons.add,
        ),
        onPressed: () {
          print('booton add');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      _onItemTapped(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 0 ?Colors.teal[600] : Colors.grey,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: currentTab == 0 ?Colors.teal[600] : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      _onItemTapped(1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 1 ?Colors.teal[600] : Colors.grey,
                        ),
                        Text(
                          'Chats',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.teal[600] : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              //right bar icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      _onItemTapped(2);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_off_outlined,
                          color: currentTab == 2 ? Colors.teal[600] : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.teal[600] : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      _onItemTapped(3);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentTab == 3 ?Colors.teal[600] : Colors.grey,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.teal[600] : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




