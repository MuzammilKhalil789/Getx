class CounterModel {
  int count=0;
  DateTime lastUpdated;
  CounterModel({
    this.count=0,
    DateTime?lastUpdated,
}):lastUpdated=lastUpdated??DateTime.now();
}