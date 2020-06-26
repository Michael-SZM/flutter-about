import 'package:flutter/material.dart';

class StackTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var normalStyle = TextStyle(fontSize: 14);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('stack'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: (){
              Navigator.maybePop(context);
            },
          ),
        ),
        body: Center(// 这个具有传递性，会传递到下面的子view中，如果子view有设置对齐方式，这个属性会被覆盖
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[

                  Container(
                    foregroundDecoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                    ),
                    child: Text(
                      '你好',style: TextStyle(fontSize: 20,color: Colors.black),
                    ),
                  ),


                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.lime[200],
                    ),
                    child: SizedBox(
                      height: 100,
                      child: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          // 这里不加子view就需要手动设置一个高度，否则，界面越界
                        ],
                      ),
                    ),
                  ),


                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.lime[100],
                    ),
                    child: Wrap(
                      runSpacing: 20,
                      children: <Widget>[
                        Stack(
                          overflow: Overflow.clip,
                          alignment: Alignment.center,
                          children: <Widget>[
                            Positioned(
                              width: 100,
                              height: 80,
                              right: 20,
                              top: 30,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.blue[400],
                                ),
                                child: Text('ssss',style: TextStyle(fontSize: 16,color: Colors.red),textAlign: TextAlign.end,),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 10,
                              child: SizedBox(
                                height: 40,
                                child: Text('测试文本00000',style: TextStyle(fontSize: 16,color: Colors.red),textAlign: TextAlign.center,),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text('kkkk',style: TextStyle(color: Colors.redAccent,fontSize: 16),),
                            ),
                            Text('静安寺你的卡看空间卡死的建设年诞生看你家哪里哪里看哪里了了哪里哪里哪里哪里哪里哪里哪里哪里弄哪里可能离开了哪里哪里哪里哪里两年来看你了困难懒死了电脑烂两三年的兰大珞狮南路哪里哪里看上了电脑懒死了DNA',textAlign: TextAlign.left,softWrap: true,),
                            Container(
                              color: Colors.green.withOpacity(0.2),
                              alignment: Alignment.bottomLeft,
                              child: Text('内部文字',),
                            ),
                          ],
                        ),

                        // 分割线，，FractionallySizedBox 使横向占满
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.blue[300],
                          ),
                          child: FractionallySizedBox(
                            widthFactor: 1,
                            child: SizedBox(
                              height: 5,
                            ),
                          ),
                        ),

                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=292706827,3758823498&fm=26&gp=0.jpg',
                              width: 80,
                              height: 80,
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Image.network(
                                'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=292706827,3758823498&fm=26&gp=0.jpg',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
