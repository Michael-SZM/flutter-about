import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/widget/toast.dart';

class RichTextPage extends StatefulWidget {
  @override
  _RichTextPageState createState() => _RichTextPageState();
}

class _RichTextPageState extends State<RichTextPage> {

  TapGestureRecognizer _tapRecongnizer;

  @override
  void initState() {
    _tapRecongnizer = TapGestureRecognizer()
      ..onTapDown = (detail) {
        print("---szm-${detail.toString()}");
      };
    super.initState();
  }


  @override
  void dispose() {
    _tapRecongnizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('富文本',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600,),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children: <Widget>[
                Text.rich(TextSpan(
                  children: [
                    TextSpan(text: "home"),
                    TextSpan(
                      text: "https://www.baidu.com",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                      recognizer: _tapRecongnizer,
                    ),
                  ],
                )),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Flutter is'),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            Toast.toast(context, "icon 被点击了",
                                duration: 100);
                          },
                          child: Icon(
                            Icons.flight,
                            size: 25,
                          ),
                        ),
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 120,
                          height: 50,
                          child: GestureDetector(
                            onTap: () {
                              Toast.toast(context, "card 被点击了",
                                  duration: 100,
                                  childWidget: Chip(
                                    label: Text(
                                      "测试自定义吐司",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.red),
                                    ),
                                    avatar: Icon(Icons.flight),
                                  ));
                            },
                            child: Card(
                              child:
                              Center(child: Text('Hello World!')),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

