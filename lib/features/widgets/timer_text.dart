import 'package:flutter/material.dart';
class TimerText extends StatelessWidget {
  final String text;
  const TimerText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 56));
  }
}