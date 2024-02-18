import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticketticker/screens/homescreen.dart';
import 'package:ticketticker/screens/profileScreen.dart';
import 'package:ticketticker/screens/searchScreen.dart';
import 'package:ticketticker/screens/ticketsScreen.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  List widgetsToDisplay = [
    HomeScreen(),
    SearchScreen(),
    TicketsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        elevation: 10,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            label: "",
          ),
        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.blueGrey.shade900,
        unselectedItemColor: Colors.blueGrey.shade300,
      ),
      body: Center(child: widgetsToDisplay[_selectedIndex]),
    );
  }
}
