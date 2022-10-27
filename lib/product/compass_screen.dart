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
    this._duration = this.widget.duration??Duration(milliseconds: 20);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedRotation(
          duration: _duration,
          turns: 30*2*math.pi/360,
          child: Compass(

          ),
        ),AnimatedRotation(
          duration: _duration,
          turns: 0*2*math.pi/360,
          child: Compass(

          ),)
      ],
    );
  }
}
