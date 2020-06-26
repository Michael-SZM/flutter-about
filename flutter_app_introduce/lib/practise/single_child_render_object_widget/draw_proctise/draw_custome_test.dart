import 'dart:math';

import 'package:flutter/material.dart';

class DrawCustomTest extends CustomPainter{


  List<Color> colors = [Colors.green,Colors.grey,Colors.yellow,Colors.red];

  Paint getColoredPaint(Color color){
    Paint paint = Paint();
    paint.color = color;
    return paint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double wheelSize = min(size.width,size.height)/2;
    int nb = 5;
    double radius = (2 * pi) / nb;
    Rect boundingRect = Rect.fromCircle(center: Offset(wheelSize, wheelSize),radius: wheelSize);

    for(int i=0;i<nb;i++){
      int n = Random().nextInt(colors.length);
      canvas.drawArc(boundingRect,i * radius , radius, true, getColoredPaint(colors[n]));
    }

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}