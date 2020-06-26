
import 'package:flutter/material.dart';
import 'package:flutterappintroduce/practise/GrammarPrac.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/animation_use/animation_test_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/container_prac_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/draw_proctise/cake_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/flex_test_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/framework/framwork_single.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/life_circle_use/AppLifeCircle.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/rich_text_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/scroll_collects/custom_scroll_view_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/scroll_collects/grid_view_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/scroll_collects/list_view_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/scroll_collects/page_view_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/scroll_collects/single_child_scroll_view_test.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/stack_test_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/transform_test_page.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/wrap_test_page.dart';

void main() {
  runApp(MyApp());
//  GrammarPrac().test2(bold:true,isTest: false);
//  GrammarPrac().say("from", "msg","test");
//  GrammarPrac().say("from", "msg","device");
//  GrammarPrac().say("from", "msg","device",2);
//  GrammarPrac().say("from", "msg","device",2,"ssss");
//  GrammarPrac().say("from", "msg","device","ssss");// 语法报错

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        "framworkSinglePage":(context) => FramworkSinglePage(),
        "appLifeCircle": (context) => AppLifeCircle(),
        "containerPracPage": (context) => ContainerPracPage(),
        "transformTestPage": (context) => TransformTestPage(),
        "flexTestPage": (context) => FlexTestPage(),
        "stackTestPage": (context) => StackTestPage(),
        "wrapTestPage": (context) => WrapTestPage(),
        "richTextPage": (context) => RichTextPage(),
        "animationTestPage": (context) => AnimationTestPage(),
        "singleChildScrollViewTest": (context) => SingleChildScrollViewTest(),
        "listViewTest": (context) => ListViewTest(),
        "gridViewTest": (context) => GridViewTest(),
        "customScrollViewTest": (context) => CustomScrollViewTest(),
        "pageViewTest": (context) => PageViewTest(),
        "cakeTest": (context) => CakeTest(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool byName = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: ListView(
            children: <Widget>[
              SwitchListTile(
                title: Text('${byName?'':'不'}通过路由名跳转'),
                value: byName,
                onChanged: (value){
                  setState(() {
                    byName = value;
                  });
                },
              ),
              _item('framworkSinglePage',FramworkSinglePage(),"framworkSinglePage"),
              _item('appLifeCircle',AppLifeCircle(),"appLifeCircle"),
              _item('containerPracPage',ContainerPracPage(),"containerPracPage"),
              _item('transformTestPage',TransformTestPage(),"transformTestPage"),
              _item('flexTestPage',FlexTestPage(),"flexTestPage"),
              _item('stackTestPage',StackTestPage(),"stackTestPage"),
              _item('wrapTestPage',WrapTestPage(),"wrapTestPage"),
              _item('richTextPage',RichTextPage(),"richTextPage"),
              _item('animationTestPage',AnimationTestPage(),"animationTestPage"),
              _item('singleChildScrollViewTest',SingleChildScrollViewTest(),"singleChildScrollViewTest"),
              _item('listViewTest',ListViewTest(),"listViewTest"),
              _item('gridViewTest',GridViewTest(),"gridViewTest"),
              _item('customScrollViewTest',CustomScrollViewTest(),"customScrollViewTest"),
              _item('pageViewTest',PageViewTest(),"pageViewTest"),
              _item('cakeTest',CakeTest(),"cakeTest"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  _item(String s, page, String routeName) {
    return Container(
      child: RaisedButton(
        onPressed: (){
          if(byName){
            Navigator.pushNamed(context, routeName);
          }else{
            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
          }
        },
        child: Text(s),
      ),
    );
  }

}
