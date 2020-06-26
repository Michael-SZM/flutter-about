import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {

  static final datas = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewTest"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: ListView.builder(itemBuilder: (context,i){   // 这种写法是推荐的写法，会一部分一部分的加载数据，性能较高
                return Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text("---item----${i+1}-----",style: TextStyle(fontSize: 14,color: Colors.white),),
                );
              }),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,i){
                return Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text("---item----${i+1}-----",style: TextStyle(fontSize: 14,color: Colors.white),),
                );
              }),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue.withGreen(180),
              child: ListView(    // 这种写法适合于条目不是特别多的情况，会一次性把所有条目都加载到内存中
                children: datas.map((v){
                  return _horizontalItem(v);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _horizontalItem(String s) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Text(s,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
      ),
    );
  }

}
