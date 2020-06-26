import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformTestPage extends StatefulWidget {
  @override
  _TransformTestPageState createState() => _TransformTestPageState();
}

class _TransformTestPageState extends State<TransformTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform'),
      ),
      body: Center(
        heightFactor: 1,
        widthFactor: 1,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(25),
          scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(color: Colors.red),
                  //默认原点为左上角，左移20像素，向上平移5像素
                  child: Transform.translate(
                    offset: Offset(-20.0, -10.0),
                    child: Text("Hello world"),
                  ),
                ),

                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Transform.rotate(
                    //旋转60度
                    angle: math.pi / 2,
                    child: Text("Hello world"),
                  ),
                ),


                DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Transform.scale(
                        scale: 2.0, //放大到1.5倍
                        child: Text("Hello world"))),

                // 这里使用一个Row会把整体宽度变成屏幕的宽度
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    DecoratedBox(
                        decoration:BoxDecoration(color: Colors.red),
                        child: Transform.scale(scale: 1.5,
                            child: Text("Hello world")
                        )
                    ),
                    Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DecoratedBox(
                      decoration: BoxDecoration(color: Colors.red),
                      //将Transform.rotate换成RotatedBox
                      child: RotatedBox(
                        quarterTurns: 1, //旋转90度(1/4圈)
                        child: Text("Hello world"),
                      ),
                    ),
                    Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
                  ],
                ),

              ]),
        ),
      ),
    );
  }
}
