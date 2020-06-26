import 'package:flutter/material.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/stagger_animation.dart';

class StaggerTestPage extends StatefulWidget {
  @override
  _StaggerTestPageState createState() => _StaggerTestPageState();
}

class _StaggerTestPageState extends State<StaggerTestPage> with TickerProviderStateMixin{

  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 20),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stagger animation show'),
      ),
      body: Center(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            _playAnimation();
          },
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5),
                  )
              ),
              child: StaggerAnimation(
                controller: _controller,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<Null> _playAnimation() async {
    try{
      // 正向动画
      await _controller.forward().orCancel;
      // 反向动画
      await _controller.reverse().orCancel;

    } on TickerCanceled{
      // the animation got canceled, probably because we were disposed
    }
  }
}
