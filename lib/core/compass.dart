import 'package:flutter/material.dart';


class Compass extends StatelessWidget {
  final double _height;
  final double _thickness;
  final Color _color;
  const Compass({Key? key, double? height, double? thickness,Color? color}) : _height=height??100, _thickness = thickness ?? 4,_color=color??Colors.black, super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(quarterTurns: 3,
      // child: Divider(
      //   color: _color,
      //   height: _height,
      //   thickness: _thickness,
      // )
      child: Icon(
        Icons.airplanemode_active,
        size: _height,
        color: Colors.white,
      ),
    );
  }
}