import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var normalStyle = TextStyle(fontSize: 14);
    return Scaffold(
      appBar: AppBar(
        title: Text('线性布局',style: TextStyle(fontSize: 18,),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Flex(
          direction: Axis.vertical,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          crossAxisAlignment: CrossAxisAlignment.end,
//          verticalDirection: VerticalDirection.up,
          children: <Widget>[

            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('001',style: normalStyle,),
                    Text('002',style: normalStyle,),
                    Text('003',style: normalStyle,),
                    Text('004',style: normalStyle,),
                    Text('005',style: normalStyle,),
                  ],
                ),
              ),
            ),



            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('001',style: normalStyle,),
                    Text('002',style: normalStyle,),
                    Text('003',style: normalStyle,),
                    Text('004',style: normalStyle,),
                    Text('005',style: normalStyle,),
                  ],
                ),
              ),
            ),

            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('001',style: normalStyle,),
                    Text('002',style: normalStyle,),
                    Text('003',style: normalStyle,),
                    Text('004',style: normalStyle,),
                    Text('005',style: normalStyle,),
                  ],
                ),
              ),
            ),


            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('001',style: normalStyle,),
                    Text('002',style: normalStyle,),
                    Text('003',style: normalStyle,),
                    Text('004',style: normalStyle,),
                    Text('005',style: normalStyle,),
                  ],
                ),
              ),
            ),


            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('001',style: normalStyle,),
                    Text('002',style: normalStyle,),
                    Text('003',style: normalStyle,),
                    Text('004',style: normalStyle,),
                    Text('005',style: normalStyle,),
                  ],
                ),
              ),
            ),

            Container(
              height: 1,
              margin: EdgeInsets.only(top: 3,bottom: 3),
              color: Colors.red,
            ),

            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                // 操作副轴
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                  ),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('001',style: normalStyle,),
                        Text('002',style: normalStyle,),
                        Text('003',style: normalStyle,),
                        Text('004',style: normalStyle,),
                        Text('005',style: normalStyle,),
                      ],
                    ),
                  ),
                ),



                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                  ),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('001',style: normalStyle,),
                        Text('002',style: normalStyle,),
                        Text('003',style: normalStyle,),
                        Text('004',style: normalStyle,),
                        Text('005',style: normalStyle,),
                      ],
                    ),
                  ),
                ),

                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                  ),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('001',style: normalStyle,),
                        Text('002',style: normalStyle,),
                        Text('003',style: normalStyle,),
                        Text('004',style: normalStyle,),
                        Text('005',style: normalStyle,),
                      ],
                    ),
                  ),
                ),


                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                  ),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('001',style: normalStyle,),
                        Text('002',style: normalStyle,),
                        Text('003',style: normalStyle,),
                        Text('004',style: normalStyle,),
                        Text('005',style: normalStyle,),
                      ],
                    ),
                  ),
                ),


                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                  ),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('001',style: normalStyle,),
                        Text('002',style: normalStyle,),
                        Text('003',style: normalStyle,),
                        Text('004',style: normalStyle,),
                        Text('005',style: normalStyle,),
                      ],
                    ),
                  ),
                )
              ],
            ),


            Container(
              height: 1,
              margin: EdgeInsets.only(top: 3,bottom: 3),
              color: Colors.red,
            ),


            // column
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.brown[300],
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.timer),
                      iconSize: 80,
                      color: Color.fromARGB(230, 0, 255, 0),
                      splashColor: Color(0x8fff0000),
                      onPressed: (){},
                    ),

                    CloseButton(),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(4),
                          constraints: BoxConstraints.tight(Size(60,60)),
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(style: BorderStyle.solid,color: Colors.black,width: 3),
                              top: BorderSide(style: BorderStyle.solid,color: Colors.black,width: 3),
                              right: BorderSide(style: BorderStyle.solid,color: Colors.black,width: 3),
                              bottom: BorderSide(style: BorderStyle.solid,color: Colors.black,width: 3),
                            ),
                          ),
                        ),
                        Expanded(
                          child: DecoratedBox(
                            decoration: ShapeDecoration(color: Colors.red,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)),side: BorderSide(color: Colors.yellow,width: 2,style: BorderStyle.solid)),
                                image: DecorationImage(image: NetworkImage('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2898446217,3526451560&fm=26&gp=0.jpg'))),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.green.withOpacity(0.23),
                              height: 64,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text('测试文本',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[

                        Expanded(
                          child: Container(
                            color: Colors.deepPurple,
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title:Text('title',style: TextStyle(fontSize: 18,color: Colors.red),),
                                  subtitle:Text('subTitle',style: TextStyle(fontSize: 14,color: Colors.red[400]),),
                                  trailing: Icon(Icons.more),
                                  leading: IconButton(
                                    icon: Icon(Icons.backup),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text('002',style: normalStyle,),
                                ),
                                Align(alignment: Alignment.centerLeft,
                                child: Text('003',style: normalStyle,),),
                                Text('004',style: normalStyle,),
                                Text('005',style: normalStyle,),
                                ListTile(
                                  title:Text('title',style: TextStyle(fontSize: 18,color: Colors.red),),
                                  subtitle:Text('subTitle',style: TextStyle(fontSize: 14,color: Colors.red[400]),),
                                  trailing: Icon(Icons.more),
                                  leading: IconButton(
                                    icon: Icon(Icons.backup),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.lightGreen[400],
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 80,
                            child: Text('文本'),
                          ),
                        ),



                      ],
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
