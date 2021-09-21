import 'package:e_study/utils/constants.dart';
import 'package:e_study/utils/db_icons.dart';
import 'package:e_study/views/Chat/chatview.dart';
import 'package:e_study/views/Home/homeview.dart';
import 'package:e_study/views/MyCourse/mycourseview.dart';
import 'package:e_study/views/Profile/profileview.dart';
import 'package:e_study/views/Search/searchview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomPage extends StatefulWidget {
  static const String routeName = '/events';

  const BottomPage({Key? key}) : super(key: key);
  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  // ignore: prefer_final_fields
  static List<Widget> _widgetOption = <Widget>[
    const HomeView(),
    const SearchView(),
    const MyCourseView(),
    const ChatView(),
    const ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: _widgetOption.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  MyFlutterApp.home,
                  size: 22,
                ),
                label: "Home",
                // title: Text(
                //   "PRO",
                //   style: TextStyle(color: Colors.black),
                // ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MyFlutterApp.search_2,
                  size: 22,
                ),
                // title: Text(
                //   "PRO",
                //   style: TextStyle(color: Colors.black),
                // ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MyFlutterApp.box,
                  size: 22,
                ),
                // title: Text(
                //   "PRO",
                //   style: TextStyle(color: Colors.black),
                // ),
                label: "My Course",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.facebookMessenger,
                  size: 20,
                ),
                label: "Chat",
                // title: Text(
                //   "PRO",
                //   style: TextStyle(color: Colors.black),
                // ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MyFlutterApp.person_outline,
                  size: 20,
                ),
                label: "Profile",
                // title: Text(
                //   "PRO",
                //   style: TextStyle(color: Colors.black),
                // ),
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: const Color(0xFFA7AAAD),
            selectedItemColor: primaryColor,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
