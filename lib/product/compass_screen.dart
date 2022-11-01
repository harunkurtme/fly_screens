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
    return Container(
      child: Container(
        margin: EdgeInsets.all(8.0),
        height: 300,
        width: 300,
        decoration:  _BoxDecoration.decoration,
        child: Stack(
          children: [
            Center(child: AnimatedRotation(
              duration: _duration,
              turns:  -(-14.25+ turns_val)*(math.pi)/180,
              child: Compass(),
              )
            ),
            // Positioned(child: Text("W",style: TextStyle(color: Colors.yellow),),right: 0.0,bottom: 0.0,top: 0.0,)
          ],
        ),
      ),
      decoration: _BoxDecoration.outSidedecoration
    );
  }
}

mixin _BoxDecoration{
  static const decoration =BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle
            );
  static const outSidedecoration =BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle
            );
          
}