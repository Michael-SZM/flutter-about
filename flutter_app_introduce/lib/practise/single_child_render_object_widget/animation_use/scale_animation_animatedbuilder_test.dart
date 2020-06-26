import 'package:flutter/material.dart';

class ScaleAnimationAnimatedBuilderTest extends StatefulWidget {
  @override
  _ScaleAnimationTestState createState() => _ScaleAnimationTestState();
}

class _ScaleAnimationTestState extends State<ScaleAnimationAnimatedBuilderTest> with TickerProviderStateMixin{

  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 3),vsync: this
    );
    //使用弹性曲线
    _animation=CurvedAnimation(parent: _controller, curve: Curves.easeInCirc);
    _animation = Tween(begin: 0.0,end: 300.0).animate(_animation)
    ..addStatusListener((status){
      if(status == AnimationStatus.completed){
        _controller.reverse();
      }else if(status == AnimationStatus.dismissed){
        _controller.forward();
      }
    });

    _controller.forward();
    super.initState();
  }
  
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//    return AnimatedBuilder(
//      animation: _animation,
//      builder: (context,child){
//        return Center(
//          child: Container(
//            width: _animation.value,
//            height: _animation.value,
//            child: child,
//          ),
//        );
//      },
//      child: Image.asset("images/logo.png",),
//    );
      return GroupTransition(
        animation: _animation,
        child: Image.asset("images/logo.png",),
      );
  }
}


class GroupTransition extends StatelessWidget{

  final Widget child;
  final Animation<double> animation;

  const GroupTransition({Key key, this.animation, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context,child){
          return Center(
            child: Container(
              width: animation.value,
              height: animation.value,
              child: child,
            ),
          );
        },
        child: child,
      ),
    );
  }

}
