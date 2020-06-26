import 'package:flutter/material.dart';

class SingleChildScrollViewTest extends StatelessWidget {

  static final datas = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollViewTest"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: datas.map((v){
                    return _horizontalItem(v);
                  }).toList(),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.blue,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: datas.map((v){
                      return _verticalItem(v);
                    }).toList(),
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _verticalItem(String s) {
    return FractionallySizedBox(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Text(s,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
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
