import 'package:flutter/material.dart';
class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          const Spacer(flex: 1,),
          Text('00:00:00', style: TextStyle(fontSize: 56)),
          const Spacer(flex: 1,),
          ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(minimumSize: Size(110, 55)), child: Icon(Icons.play_arrow, size: 32,),),
          const SizedBox(height: 75,),
        ],
      ),
    );
  }
}