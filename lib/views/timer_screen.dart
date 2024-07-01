import 'package:clock_app/controller/timer_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timerController = Provider.of<TimerController>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            timerController.timeLeftString,
            style: TextStyle(fontSize: 48.0),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  timerController.startTimer();
                },
                child: Text('Start'),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: () {
                  timerController.pauseTimer();
                },
                child: Text('Pause'),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: () {
                  timerController.resetTimer();
                },
                child: Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
