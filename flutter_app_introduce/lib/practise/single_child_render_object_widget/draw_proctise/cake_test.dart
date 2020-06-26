import 'package:flutter/material.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/draw_proctise/draw_custome_test.dart';

class CakeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CustomPaint(
            size: Size(200, 200),
            painter: DrawCustomTest(),
          ),
        ),
      ),
    );
  }

}
