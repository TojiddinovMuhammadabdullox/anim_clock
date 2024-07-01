import 'package:clock_app/model/alarm_model.dart';
import 'package:flutter/foundation.dart';

class AlarmController with ChangeNotifier {
  List<Alarm> _alarms = [];

  List<Alarm> get alarms => _alarms;

  void addAlarm(Alarm alarm) {
    _alarms.add(alarm);
    notifyListeners();
  }

  void removeAlarm(String id) {
    _alarms.removeWhere((alarm) => alarm.id == id);
    notifyListeners();
  }

  void toggleAlarm(String id) {
    int index = _alarms.indexWhere((alarm) => alarm.id == id);
    if (index != -1) {
      _alarms[index].isActive = !_alarms[index].isActive;
      notifyListeners();
    }
  }
}
