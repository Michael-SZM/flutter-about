import 'package:flutter/material.dart';

class GridViewTest extends StatelessWidget {

  static final datas = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewTest"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      crossAxisCount: 3),
                  itemBuilder: (context,i){
                    return Container(
//                      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      color: Colors.yellow,
                      child: Center(
                        child: Text("-item-${i+1}"),
                      ),
                    );
                  }),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: GridView.count(
                mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  crossAxisCount: 4,
                children: datas.map((v){
                  return _item(v);
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue.withRed(180),
              child: GridView.custom(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 3,crossAxisSpacing: 3,),
                  childrenDelegate: SliverChildBuilderDelegate((context,i){
                    return Container(
                      color: Colors.yellow.withBlue(180),
                      child: Center(
                        child: Text("-item-${i+1}"),
                      ),
                    );
                  },),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _item(String s) {
    return Container(
      color: Colors.brown,
      child: Center(
        child: Text(s,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
      ),
    );
  }

}
