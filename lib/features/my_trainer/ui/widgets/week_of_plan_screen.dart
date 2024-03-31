import 'package:flutter/material.dart';

class WeekOfPlanScreen extends StatelessWidget{
  const WeekOfPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Week of plan'),
      ),
      body: const Center(
        child: Text('Week of plan screen'),
      ),
    );
  }
}
