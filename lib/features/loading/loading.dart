import 'dart:async';
import 'package:flutter/material.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import '../../core/theming/styles.dart';

class LoadingScreen extends StatefulWidget{
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Timer? _timer;
  double _progressValue = 0;

  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is created
    _startTimer();
  }

  void _startTimer() {
    const duration = Duration(seconds: 1);

    _timer = Timer.periodic(duration, (timer) {
      _updateProgress(0.1);

      // Check if progress has reached 100%
      if (_progressValue >= 1.0) {
        // Cancel the timer when progress is complete
        _timer?.cancel();
        context.pushNamed(Routes.trainerAfterLoading);
      }
    });
  }

  void _updateProgress(double increment) {
    setState(() {
      _progressValue += increment;

      // Ensure the progress value stays between 0 and 1
      _progressValue = _progressValue.clamp(0.0, 1.0);
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed to avoid memory leaks
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 250,
                  child: CircularProgressIndicator(
                    value: _progressValue,
                    backgroundColor: Colors.grey,
                    valueColor: const AlwaysStoppedAnimation<Color>(ColorsManager.lightPurple),
                    strokeWidth: 25,
                  ),
                ),
                Text(
                  '${(_progressValue * 100).toStringAsFixed(0)}%',
                  style: TextStyles.font50Purple700,
                ),
              ],
            ),
          ),
          Text(
            'Building your plan ...',
            style: TextStyles.font20Purple700,
          ),
        ],
      ),
    );
  }


}



