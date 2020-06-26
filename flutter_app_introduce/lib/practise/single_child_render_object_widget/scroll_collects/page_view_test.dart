import 'package:flutter/material.dart';

class PageViewTest extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageViewTest"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            margin: EdgeInsets.all(10),
//                  decoration: BoxDecoration(color: Colors.blueAccent),
            child: PhysicalModel(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              clipBehavior: Clip.antiAlias,
              child: PageView(
                children: <Widget>[
                  _item('page1', Colors.grey),
                  _item('page2', Colors.red),
                  _item('page3', Colors.green),
                ],
              ),
            ),
          ),

          Container(
            height: 100,
            margin: EdgeInsets.all(10),
//                  decoration: BoxDecoration(color: Colors.blueAccent),
            child: PhysicalModel(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              clipBehavior: Clip.antiAlias,
              child: PageView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  _item('page1', Colors.grey),
                  _item('page2', Colors.red),
                  _item('page3', Colors.green),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }




  _item(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }

}
