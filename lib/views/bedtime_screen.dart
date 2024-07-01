import 'package:clock_app/controller/bedtime_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BedtimeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bedtimeController = Provider.of<BedtimeController>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bedtime: ${bedtimeController.bedtime.format(context)}',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                context: context,
                initialTime: bedtimeController.bedtime,
              );
              if (pickedTime != null && pickedTime != bedtimeController.bedtime) {
                bedtimeController.setBedtime(pickedTime);
              }
            },
            child: Text('Set Bedtime'),
          ),
        ],
      ),
    );
  }
}
