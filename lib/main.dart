import 'package:clock_app/controller/alarm_controller.dart';
import 'package:clock_app/controller/bedtime_controller.dart';
import 'package:clock_app/controller/stopwatch_controller.dart';
import 'package:clock_app/controller/timer_controller.dart';
import 'package:clock_app/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ClockApp());
}

class ClockApp extends StatelessWidget {
  const ClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AlarmController()),
        ChangeNotifierProvider(create: (_) => TimerController()),
        ChangeNotifierProvider(create: (_) => StopwatchController()),
        ChangeNotifierProvider(create: (_) => BedtimeController()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
