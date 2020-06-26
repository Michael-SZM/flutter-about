import 'package:flutter/material.dart';

/**
 *  1.要创建交织动画，需要使用多个动画对象（Animation）。
    2.一个AnimationController控制所有的动画对象。
    3.给每一个动画对象指定时间间隔（Interval）
 */

class StaggerAnimation extends StatelessWidget {

  final Animation<double> controller;

  Animation<double> _height;
  Animation<EdgeInsets> _padding;
  Animation<Color> _color;

  StaggerAnimation({Key key, this.controller}):super(key:key){
    //高度动画
    _height = Tween<double>(begin: .0,end: 300).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.0,0.6, // 间隔，前60% 的动画时间
        curve: Curves.ease,
      ),
    ));

    _color = ColorTween(begin: Colors.green,end: Colors.red).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.0,0.6,
        curve: Curves.ease,
      ),
    ));

    _padding = Tween<EdgeInsets>(begin: EdgeInsets.only(left: .0),end: EdgeInsets.only(left: 150)).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.6,1.0, // 间隔，沪40%的动画时间
        curve: Curves.ease,
      ),
    ));

  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      alignment:Alignment.bottomCenter,
      padding: _padding.value,
      child: Container(
        color: _color.value,
        width: 50,
        height: _height.value,
      ),
    );
  }
}
