import 'package:flutter/material.dart';

class ContainerPracPage extends StatefulWidget {
  @override
  _ContainerPracPageState createState() => _ContainerPracPageState();
}

class _ContainerPracPageState extends State<ContainerPracPage> {

  @override
  Widget build(BuildContext context) {
    var normalStyle = TextStyle(fontSize:14,fontWeight: FontWeight.w300,color: Colors.black);
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.lightGreen,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(10, 15, 10, 8),
              width: 100,
              height: 100,
              alignment: Alignment.topCenter,
              child: Text('对齐展示',style: normalStyle,),
            ),

            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(5),
              constraints: BoxConstraints(
                minHeight: 120,
                minWidth: 100,
              ),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.5),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0,2.0),
                    blurRadius: 4.0
                  ),
                ],
              ),
              alignment: Alignment.topCenter,
              child: Text('圆角展示',style: TextStyle(fontSize: 18,color: Colors.white),),
            ),


            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0x3fff00fb),
                border: Border(
                  left: BorderSide(
                    color: Colors.green,
                    style: BorderStyle.solid,
                    width: 3,
                  ),
                  bottom: BorderSide(
                    color: Colors.green[600],
                    style: BorderStyle.solid,
                    width: 3,
                  ),
                ),
              ),
              alignment: Alignment.center,
              child: Text('边框展示',style: TextStyle(fontSize: 18,color: Colors.red),),
            ),



            Container(
              color: Colors.lightGreen,
              child: Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 15),
                    color: Colors.black,
                    child: new Transform(
                      alignment: Alignment.bottomRight, //相对于坐标系原点的对齐方式
                      transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                      child: new Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.deepOrange,
                        child: const Text('transform展示'),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
              constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
              decoration: BoxDecoration(//背景装饰
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: RadialGradient( //背景径向渐变
                      colors: [Colors.red, Colors.orange],
                      center: Alignment.topLeft,
                      radius: .98
                  ),
                  boxShadow: [ //卡片阴影
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0
                    )
                  ]
              ),
              transform: Matrix4.rotationZ(.2), //卡片倾斜变换
              alignment: Alignment.center, //卡片内文字居中
              child: Text( //卡片文字
                "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            ),



            Container(
              constraints: BoxConstraints.expand(width: 100,height: 80),
            ),

          ],
        ),
      ),
    );
  }
}
