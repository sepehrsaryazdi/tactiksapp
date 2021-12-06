import 'package:flutter/material.dart';

class CustomFloatingButtonLocation extends FloatingActionButtonLocation {
  final location = FloatingActionButtonLocation.centerDocked;
  double offsetX = 0; // Offset in X direction
     double offsetY = 10; // Offset in Y direction


  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    Offset offset = location.getOffset(scaffoldGeometry);
    return Offset(offset.dx + offsetX, offset.dy + offsetY);
  }
}

class NoScalingAnimation extends FloatingActionButtonAnimator{
  double _x = 0;
  double _y = 0;
  @override
  Offset getOffset({required Offset begin, required Offset end, required double progress}) {
  _x = begin.dx +(end.dx - begin.dx)*progress ;
  _y = begin.dy +(end.dy - begin.dy)*progress;
    return Offset(_x,_y);
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
  }

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
  }

}