import 'package:flutter/material.dart';
import 'dart:math' as math;

class GyroPosition extends StatelessWidget {
  const GyroPosition({Key? key}) : super(key: key);

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
                    topLeft: Radius.circular(15)
                  )
                ),
                child: SizedBox(
                  height: 100,
                  width: 200,
                    ),
                  ),
              AnimatedContainer(
                duration: Duration(milliseconds: 100),
                color: Colors.green,
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