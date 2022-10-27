import 'package:flutter/material.dart';


class Compass extends StatelessWidget {
  final double _height;
  final double _thickness;
  final Color _color;
  const Compass({Key? key, double? height, double? thickness,Color? color}) : _height=height??200, _thickness = thickness ?? 10,_color=Colors.black, super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 0,
      child: Divider(
        color: _color,
        height: _height,
        thickness: _thickness,
      ),
    );
  }
}