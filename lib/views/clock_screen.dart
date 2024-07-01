import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: Stream.periodic(Duration(seconds: 1)),
          builder: (context, snapshot) {
            final now = DateTime.now();
            final formattedTime = DateFormat('hh:mm:ss a').format(now);
            return Text(
              formattedTime,
              style: TextStyle(fontSize: 48.0),
            );
          },
        ),
      ),
    );
  }
}
