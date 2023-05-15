import 'package:flutter/material.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/profile_screen.dart';
import 'package:my_app/screens/search_screen.dart';
import 'package:my_app/screens/ticket_screen.dart';

class BotttomBar extends StatefulWidget {
  const BotttomBar({super.key});

  @override
  State<BotttomBar> createState() => _BotttomBarState();
}

class _BotttomBarState extends State<BotttomBar> {
  int _selectednumber = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketApp(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectednumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectednumber]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectednumber,
          onTap: _onItemTapped,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color(0xff256799),
          unselectedItemColor: Colors.grey.shade500,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), activeIcon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined), activeIcon: Icon(Icons.airplane_ticket), label: "Airplane"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person), label: "Person"),
          ]),
    );
  }
}
