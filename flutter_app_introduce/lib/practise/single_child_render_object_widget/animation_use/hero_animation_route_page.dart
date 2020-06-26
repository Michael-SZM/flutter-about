// 路由A
import 'package:flutter/material.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/hero_animation_route_b_page.dart';


/**
 * 实现Hero动画只需要用Hero组件将要共享的widget包装起来，并提供一个相同的tag即可，中间的过渡帧都是Flutter Framework自动完成的。
 * 必须要注意， 前后路由页的共享Hero的tag必须是相同的，Flutter Framework内部正是通过tag来确定新旧路由页widget的对应关系的。
 */

class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hero show'),
        leading: BackButton(color: Colors.amber,),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: InkWell(
          child: Hero(
            tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
            child: Image.asset("images/logo.png",),
          ),
          onTap: () {
            //打开B路由
            Navigator.push(context, PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                  return new FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      appBar: AppBar(
                        title: Text("变身结束"),
                      ),
                      body: HeroAnimationRouteB(),
                    ),
                  );
                })
            );
          },
        ),
      ),
    );
  }
}