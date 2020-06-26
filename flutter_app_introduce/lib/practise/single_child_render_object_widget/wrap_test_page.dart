import 'package:flutter/material.dart';

class WrapTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap',style: TextStyle(fontSize: 18,color: Colors.white),),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Wrap(
              spacing: 16.0, // 主轴(水平)方向间距
              runSpacing: 2.0, // 纵轴（垂直）方向间距
              alignment: WrapAlignment.end, //沿主轴方向居中
              children: <Widget>[
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                  label: new Text('Lafayette'),
                ),
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                  label: new Text('Mulligan'),
                ),
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                  label: new Text('Laurens'),
                ),
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                  label: new Text('Michael'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
