import 'package:flutter/material.dart';
import 'package:flutterappintroduce/practise/single_child_render_object_widget/framework/my_drawer.dart';

class FramworkSinglePage extends StatefulWidget {
  @override
  _FramworkSinglePageState createState() => _FramworkSinglePageState();
}

class _FramworkSinglePageState extends State<FramworkSinglePage> with SingleTickerProviderStateMixin{

  int _selectedIndex = 1;
  TabController _tabController;
  List tabs = ["新闻", "历史", "图片"];


  @override
  void initState() {
    _tabController = TabController(length: tabs.length,vsync: this);
    _tabController.addListener((){
      switch(_tabController.index){
        case 1:
        case 2:

      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App Name"),
        actions: <Widget>[ //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share),onPressed: (){},),
          IconButton(icon: Icon(Icons.shuffle),onPressed: (){},),
        ],
        leading: Builder(builder: (context){
          return IconButton(
            icon: Icon(Icons.backup),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          );
        },),
        bottom: TabBar(//生成Tab菜单
          controller: _tabController,
          indicatorColor: Colors.lightGreen,
//          isScrollable: true,
          tabs: tabs.map((e) => Tab(text: e,icon: Icon(Icons.http),)).toList(),
        ),
      ),
      drawer: MyDrawer(),
      endDrawer: MyDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e){
          return Container(
            alignment: Alignment.center,
            child: Text(e,textScaleFactor: 5,),
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),// 底部导航栏打一个圆形的洞,,, BottomAppBar的shape属性决定洞的外形
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.home)),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.business)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onAdd,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,// 打洞的位置取决于FloatingActionButton的位置
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {

  }
}
