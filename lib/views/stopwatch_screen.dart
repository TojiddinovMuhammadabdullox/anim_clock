import 'package:clock_app/controller/stopwatch_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StopwatchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stopwatchController = Provider.of<StopwatchController>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            stopwatchController.timeElapsedString,
            style: TextStyle(fontSize: 48.0),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  stopwatchController.startStopwatch();
                },
                child: Text('Start'),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: () {
                  stopwatchController.stopStopwatch();
                },
                child: Text('Stop'),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: () {
                  stopwatchController.resetStopwatch();
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
