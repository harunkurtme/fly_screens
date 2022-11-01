import 'package:flutter/material.dart';
import 'dart:math' as math;

class GyroPosition extends StatelessWidget {
  const GyroPosition({Key? key, required this.boxHeight}) : super(key: key);

  final int boxHeight; 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedRotation(
         duration: Duration(milliseconds: 100),
      turns:  -(-14.25+ 10)*(math.pi)/180,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 100),
                
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((boxHeight*6/4).toDouble()),
                    topRight: Radius.circular((boxHeight*6/4).toDouble())
                  )
                ),
                child: SizedBox(
                  height: boxHeight.toDouble(),
                  width: 200,
                    ),
                  ),
              AnimatedContainer(
                duration: Duration(milliseconds: 100),
                
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular((boxHeight*6/4).toDouble()),
                    bottomRight: Radius.circular((boxHeight*6/4).toDouble())
                  )
                ),
                
                child: SizedBox(
                  height: 100,
                  width: 200,
                  ),
                )
            ],
          ),
        ],
      ),),
    );
  }
}