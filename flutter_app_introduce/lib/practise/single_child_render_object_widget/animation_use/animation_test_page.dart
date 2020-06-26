import 'package:flutter/material.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/animated_switcher_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/hero_animation_route_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/scale_animation_animatedbuilder_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/scale_animation_animatedwidget_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/scale_animation_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/stagger_test_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/container_prac_page.dart';

class AnimationTestPage extends StatefulWidget {
  @override
  _AnimationTestPageState createState() => _AnimationTestPageState();
}

class _AnimationTestPageState extends State<AnimationTestPage> with TickerProviderStateMixin{


  AnimationController _controller;
  static Animation<int> alpha;

  var _listenner = (){
      print("value---${alpha.value}");
  };

  var _statusListenner = (status){

  };

  @override
  void initState() {
    _controller = new AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    final Animation curve =
    new CurvedAnimation(parent: _controller, curve: Curves.bounceIn);
    alpha = new IntTween(begin: 10, end: 255).animate(curve);
    alpha.addListener(_listenner);
    alpha.addStatusListener(_statusListenner);
    _controller.forward();
    super.initState();
  }


  @override
  void dispose() {
    _controller.dispose();
    alpha.removeListener(_listenner);
    alpha.removeStatusListener(_statusListenner);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation use'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            _item('scale case',tapCallBack:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScaleAnimationTest()));
            },marH: 10),
            _dividerLine(marH: 10),
            _item('ScaleAnimationAnimatedWidgetTest',tapCallBack: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScaleAnimationAnimatedWidgetTest()));
            },marH: 10),
            _dividerLine(marH: 10),
            _item('ScaleAnimationAnimatedBuilderTest',tapCallBack: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScaleAnimationAnimatedBuilderTest()));
//              Navigator.push(context, PageRouteBuilder(
//                transitionDuration: Duration(microseconds: 500),
//                pageBuilder: (context,animation,secondaryAnimation){
//                  return FadeTransition(
//                    opacity: animation,
//                    child: ScaleAnimationAnimatedBuilderTest(),
//                  );
//                }
//              ));

            },marH: 10),
            _dividerLine(marH: 10),
            _item('testpageAnimationFade', tapCallBack:(){
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 500), //动画时间为500毫秒
                  pageBuilder: (BuildContext context, Animation animation,
                      Animation secondaryAnimation) {
                    return new FadeTransition(
                      //使用渐隐渐入过渡,
                      opacity: animation,
                      child: ContainerPracPage(), //路由B
                    );
                  },
                ),
              );
            }),
            _item('testpageAnimation', tapCallBack:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerPracPage()));
            }),
            _dividerLine(marH: 10),
            _item('hero animation show',tapCallBack: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HeroAnimationRoute()));
            },marH: 10),
            _dividerLine(marH: 10),
            _item('stagger animation',tapCallBack: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StaggerTestPage()));
            },marH: 10),
            _dividerLine(marH: 10),
            _item('animatedSwitcher test',tapCallBack: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatedSwitcherPage()));
            },marH: 10),
          ],
        ),
      ),
    );
  }


   _dividerLine({double marH = 0}){
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 1,
        margin: EdgeInsets.only(left: marH,right: marH),
        color: Colors.black,
      ),
    );
  }

  Widget _item(String s,{Function() tapCallBack ,double marH = 0}) {
    return InkWell(
      splashColor: Colors.orange.withAlpha(30),
      onTap: (){
        if(tapCallBack != null){
          tapCallBack();
        }

      },
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
        margin: EdgeInsets.only(left: marH,right: marH),
        decoration: BoxDecoration(
          color: Colors.blue[300].withAlpha(80),
        ),
        child: Text(s,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      ),
    );
  }
}
