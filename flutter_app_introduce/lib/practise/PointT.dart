import 'dart:math';

class PointT{

  final num x;
  final num y;
  final num distanceFromOrigin;

  PointT(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);

}