import 'package:flutter/material.dart';
import 'package:fly_screens/core/compass.dart';

import 'dart:math' as math;

class CompassScreen extends StatefulWidget {
  CompassScreen({Key? key, this.duration}) : super(key: key);
  Duration? duration;

  @override
  State<CompassScreen> createState() => _CompassScreenState();
}

class _CompassScreenState extends State<CompassScreen> {

  late Duration _duration;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._duration = this.widget.duration??Duration(milliseconds: 200);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedRotation(
          duration: _duration,
          turns: 14.25*(math.pi)/180,
          child: Compass(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

