import 'package:flutter/material.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/widget/toast.dart';

class AppLifeCircle extends StatefulWidget {

  @override
  _AppLifeCircleState createState() => _AppLifeCircleState();

}

class _AppLifeCircleState extends State<AppLifeCircle> with WidgetsBindingObserver{

  @override
  void initState() { // 类似Android中的onCreate ,iOS中的viewDidLoad
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if(state == AppLifecycleState.paused){
      print('视图不可见');
    }else if(state == AppLifecycleState.resumed){
      print('视图可见，且可以交互');
    }else if(state == AppLifecycleState.inactive){
      print('视图可见，但不可以交互');
    }
  }


  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app 生命周期用例，点击事件添加'),
        leading: BackButton(),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              Toast.toast(context, "干啥咧");
            },
            child: Text('RaisedButton'),
          ),
          OutlineButton(
            onPressed: (){
              Toast.toast(context, "你烦不烦");
            },
            child: Text("OutlineButton"),
          ),
          FlatButton(
            onPressed: (){
              Toast.toast(context, "莫烦老子");
            },
            child: Text("FlatButton"),
          ),
          GestureDetector(
            onTap: (){
              Toast.toast(context, "滚，离我远点");
            },
            child: SizedBox(
              width: 120,
              height: 100,
              child: Text("GestureDetector"),
            ),
          ),
          InkWell(
            onTap: (){
              Toast.toast(context, "",childWidget: Text("臭病毒",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w600),));
            },
            splashColor: Colors.blue,
            child: Container(
              width: 200,
              height: 50,
              child: Center(
                child: Text("InkWell"),
              ),
            ),
          ),
        ],
      ),
    );
  }


}
