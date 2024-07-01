// ignore_for_file: library_private_types_in_public_api

import 'package:clock_app/views/alarm_screen.dart';
import 'package:clock_app/views/bedtime_screen.dart';
import 'package:clock_app/views/clock_screen.dart';
import 'package:clock_app/views/stopwatch_screen.dart';
import 'package:clock_app/views/timer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    AlarmView(),
    ClockView(),
    TimerView(),
    StopwatchView(),
    BedtimeView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clock App'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alarm,
              color: Colors.black,
            ),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              color: Colors.black,
            ),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timer,
              color: Colors.black,
            ),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_power_sharp,
              color: Colors.black,
            ),
            label: 'Stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bedtime,
              color: Colors.black,
            ),
            label: 'Bedtime',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
