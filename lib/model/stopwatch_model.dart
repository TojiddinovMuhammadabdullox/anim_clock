class StopwatchModel {
  Duration elapsedTime;
  bool isRunning;

  StopwatchModel({
    this.elapsedTime = Duration.zero,
    this.isRunning = false,
  });

  void start() {
    isRunning = true;
  }

  void stop() {
    isRunning = false;
  }

  void reset() {
    elapsedTime = Duration.zero;
    isRunning = false;
  }

  void tick(Duration duration) {
    if (isRunning) {
      elapsedTime += duration;
    }
  }
}
