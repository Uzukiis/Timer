import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer/features/widgets/timer_text.dart';
import 'package:timer/features/timer/logic/timer_logic.dart';
class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  final _logic = TimerLogic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          const Spacer(flex: 1,),
          _logic.isRunning == false ? CupertinoTimerPicker(mode: CupertinoTimerPickerMode.hms, onTimerDurationChanged: (Duration newDuration){print(newDuration);}) : Text('00:00:00', style: TextStyle(fontSize: 56)),
          const Spacer(flex: 1,),
          ListenableBuilder(
            listenable: _logic,
            builder: (context, child) {
              return ElevatedButton(onPressed: () {_logic.startTimer(); setState(() {});}, style: ElevatedButton.styleFrom(minimumSize: Size(110, 55)), child: Icon(_logic.isRunning == false ? Icons.play_arrow : Icons.pause, size: 32,),);
            }
          ),
          const SizedBox(height: 75,),
        ],
      ),
    );
  }
}