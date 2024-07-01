import 'package:clock_app/controller/alarm_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlarmView extends StatelessWidget {
  const AlarmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<AlarmController>(
        builder: (context, alarmController, child) {
          return ListView.builder(
            itemCount: alarmController.alarms.length,
            itemBuilder: (context, index) {
              final alarm = alarmController.alarms[index];
              return ListTile(
                title: Text('${alarm.time.hour}:${alarm.time.minute}'),
                trailing: Switch(
                  value: alarm.isActive,
                  onChanged: (bool value) {
                    alarmController.toggleAlarm(alarm.id);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add alarm logic
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
