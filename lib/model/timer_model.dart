class TimerModel {
  int duration; // Duration of the timer in seconds
  bool isRunning;
  int remainingTime;

  TimerModel({
    required this.duration,
    this.isRunning = false,
    int? remainingTime,
  }) : remainingTime = remainingTime ?? duration;

  void start() {
    isRunning = true;
  }

  void stop() {
    isRunning = false;
  }

  void reset() {
    remainingTime = duration;
    isRunning = false;
  }

  void tick() {
    if (isRunning && remainingTime > 0) {
      remainingTime--;
    }
  }
}
