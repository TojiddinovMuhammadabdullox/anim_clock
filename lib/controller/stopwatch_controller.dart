import 'dart:async';
import 'package:clock_app/model/stopwatch_model.dart';
import 'package:flutter/foundation.dart';

class StopwatchController with ChangeNotifier {
  StopwatchModel _stopwatchModel = StopwatchModel();
  Timer? _timer;

  String get timeElapsedString {
    final duration = _stopwatchModel.elapsedTime;
    final minutes = duration.inMinutes;
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    final milliseconds = (duration.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0');
    return '$minutes:$seconds.$milliseconds';
  }

  void startStopwatch() {
    _stopwatchModel.start();
    _timer?.cancel();
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      _stopwatchModel.tick(Duration(milliseconds: 30));
      notifyListeners();
    });
  }

  void stopStopwatch() {
    _stopwatchModel.stop();
    _timer?.cancel();
  }

  void resetStopwatch() {
    _stopwatchModel.reset();
    notifyListeners();
  }
}
