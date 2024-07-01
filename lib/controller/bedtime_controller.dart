import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BedtimeController with ChangeNotifier {
  TimeOfDay _bedtime = TimeOfDay(hour: 22, minute: 0);

  TimeOfDay get bedtime => _bedtime;

  void setBedtime(TimeOfDay newTime) {
    _bedtime = newTime;
    notifyListeners();
  }
}
