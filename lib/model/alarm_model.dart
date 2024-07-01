class Alarm {
  String id;
  DateTime time;
  bool isActive;

  Alarm({required this.id, required this.time, this.isActive = true});
}
