import 'package:flutter/material.dart';

class FunPage extends StatelessWidget
{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('朋友圈'),
        ),
        body: MyFunPageBody(),
      ),
    );
  }
}

class MyFunPageBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,//主轴 用来控制子控件的排列的位置，就是与当前控件方向一致方向的轴
//        crossAxisAlignment: ,// 与当前控件方向垂直的轴
          crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: true, onChanged:(value)=>print('hello flutter')),
          Text('同意协议',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}