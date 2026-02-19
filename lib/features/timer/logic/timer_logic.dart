import 'package:flutter/material.dart';
class TimerLogic extends ChangeNotifier {
  bool isRunning = false;
  void startTimer() {
    isRunning = !isRunning;
    notifyListeners();
  }
}