import 'dart:async';
import 'package:clock_app/model/timer_model.dart';
import 'package:flutter/foundation.dart';

class TimerController with ChangeNotifier {
  TimerModel _timerModel = TimerModel(duration: 60);
  Timer? _timer;

  String get timeLeftString => '${_timerModel.remainingTime ~/ 60}:${(_timerModel.remainingTime % 60).toString().padLeft(2, '0')}';

  void startTimer() {
    _timerModel.start();
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _timerModel.tick();
      notifyListeners();
      if (_timerModel.remainingTime <= 0) {
        _timer?.cancel();
      }
    });
  }

  void pauseTimer() {
    _timerModel.stop();
    _timer?.cancel();
  }

  void resetTimer() {
    _timerModel.reset();
    notifyListeners();
  }
}
