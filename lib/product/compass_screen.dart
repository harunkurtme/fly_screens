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
   late double turns_val;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    turns_val=0;
    this._duration = this.widget.duration??Duration(milliseconds: 200);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedRotation(
          duration: _duration,
          turns: -(28.5+ turns_val)*(math.pi)/180, //14.25 90 degree
          child: Container(
            child: Container(
              margin: EdgeInsets.all(8.0),
              height: 300,
              width: 300,
              decoration:  _BoxDecoration.decoration,
              child: Stack(
                children: [
                  Center(child: Compass()),
                ],
              ),
            ),
            decoration: _BoxDecoration.outSidedecoration
          )
        ),
      ],
    );
  }
}

mixin BoxCompassDecoration{
  static const decoration =BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle
            );
  static const outSidedecoration =BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle
            );
          
}