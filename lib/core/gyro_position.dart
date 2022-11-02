import 'package:flutter/material.dart';
import 'dart:math' as math;

class GyroPosition extends StatelessWidget {
  const GyroPosition({Key? key, this.boxHeight=100, this.boxWidth=100,required this.sensorXValue,required this.sensorYValue}) : super(key: key);

  final int boxHeight; 
  final int boxWidth; 
  final double sensorYValue;
  final double sensorXValue;

  double map(double x, double in_min, double in_max, double out_min, double out_max) {
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular((boxHeight*6/4).toDouble()),
                    //   topRight: Radius.circular((boxHeight*6/4).toDouble())
                    // )
                  ),
                  child: SizedBox(
                   height: map(sensorYValue, -90, 90, 0, 200),
                    width: boxWidth.toDouble(),
                      ),
                    ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    // borderRadius: BorderRadius.only(
                    //   bottomLeft: Radius.circular((boxHeight*6*4/4).toDouble()),
                    //   bottomRight: Radius.circular((boxHeight*6*4/4).toDouble())
                    // )
                  ),
                  
                  child: SizedBox(
                    height: map(-sensorYValue, -90, 90, 0, 200),
                    width: boxWidth.toDouble(),
                    ),
                  )
              ],
            ),
          ),
          Positioned(
            right: 0.5,
            left: 0.5,
            bottom: 0.5,
            top: 0.5,
            child: AnimatedRotation(
              duration: Duration(milliseconds: 100),
              turns:  -( sensorXValue)*(math.pi)/180,// 14.25 val right -14.25 left,
              child: Divider(
                endIndent: 100,
                indent: 100,
                height: 0,
                thickness: 5,
                color: Colors.black,
              ),
              
            ),
          )
          
        ],
      ),
    );
  }
}