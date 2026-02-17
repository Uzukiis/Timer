import 'package:flutter/material.dart';
import 'features/timer/presentation/timer_page.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TimerPage(),
    );
  }
}
