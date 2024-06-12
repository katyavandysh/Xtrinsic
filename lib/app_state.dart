import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _percentages = [34, 42, 24];
  List<int> get percentages => _percentages;
  set percentages(List<int> value) {
    _percentages = value;
  }

  void addToPercentages(int value) {
    _percentages.add(value);
  }

  void removeFromPercentages(int value) {
    _percentages.remove(value);
  }

  void removeAtIndexFromPercentages(int index) {
    _percentages.removeAt(index);
  }

  void updatePercentagesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _percentages[index] = updateFn(_percentages[index]);
  }

  void insertAtIndexInPercentages(int index, int value) {
    _percentages.insert(index, value);
  }

  int _welcomeCircleDiameter = 350;
  int get welcomeCircleDiameter => _welcomeCircleDiameter;
  set welcomeCircleDiameter(int value) {
    _welcomeCircleDiameter = value;
  }

  List<String> _chipChoices = [];
  List<String> get chipChoices => _chipChoices;
  set chipChoices(List<String> value) {
    _chipChoices = value;
  }

  void addToChipChoices(String value) {
    _chipChoices.add(value);
  }

  void removeFromChipChoices(String value) {
    _chipChoices.remove(value);
  }

  void removeAtIndexFromChipChoices(int index) {
    _chipChoices.removeAt(index);
  }

  void updateChipChoicesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _chipChoices[index] = updateFn(_chipChoices[index]);
  }

  void insertAtIndexInChipChoices(int index, String value) {
    _chipChoices.insert(index, value);
  }

  String _selectedType = '';
  String get selectedType => _selectedType;
  set selectedType(String value) {
    _selectedType = value;
  }

  String _selectedTile = '';
  String get selectedTile => _selectedTile;
  set selectedTile(String value) {
    _selectedTile = value;
  }

  bool _devicePaired = false;
  bool get devicePaired => _devicePaired;
  set devicePaired(bool value) {
    _devicePaired = value;
  }

  int _daysScale = 7;
  int get daysScale => _daysScale;
  set daysScale(int value) {
    _daysScale = value;
  }

  List<int> _chartX = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> get chartX => _chartX;
  set chartX(List<int> value) {
    _chartX = value;
  }

  void addToChartX(int value) {
    _chartX.add(value);
  }

  void removeFromChartX(int value) {
    _chartX.remove(value);
  }

  void removeAtIndexFromChartX(int index) {
    _chartX.removeAt(index);
  }

  void updateChartXAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _chartX[index] = updateFn(_chartX[index]);
  }

  void insertAtIndexInChartX(int index, int value) {
    _chartX.insert(index, value);
  }

  List<int> _chartY = [0, 9, 22, 66, 84, 72, 60, 74, 91, 86, 67];
  List<int> get chartY => _chartY;
  set chartY(List<int> value) {
    _chartY = value;
  }

  void addToChartY(int value) {
    _chartY.add(value);
  }

  void removeFromChartY(int value) {
    _chartY.remove(value);
  }

  void removeAtIndexFromChartY(int index) {
    _chartY.removeAt(index);
  }

  void updateChartYAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _chartY[index] = updateFn(_chartY[index]);
  }

  void insertAtIndexInChartY(int index, int value) {
    _chartY.insert(index, value);
  }

  int _avgLevel = 87;
  int get avgLevel => _avgLevel;
  set avgLevel(int value) {
    _avgLevel = value;
  }
}
