import 'package:flutter/material.dart';

class ScaleAnimationTest extends StatefulWidget {
  @override
  _ScaleAnimationTestState createState() => _ScaleAnimationTestState();
}

class _ScaleAnimationTestState extends State<ScaleAnimationTest>
    with TickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    //使用弹性曲线
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInCirc);
    _animation = Tween(begin: 0.0, end: 300.0).animate(_animation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "images/logo.png",
        width: _animation.value,
        height: _animation.value,
      ),
    );
  }
}
