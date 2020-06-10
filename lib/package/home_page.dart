import 'package:flutter/material.dart';
import 'package:todayflutterapp/const.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body:  MyHomeRichBody(),
    );
  }
}

class MyHomeBody extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text(
    '《定风波》 苏轼 \n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。',
    style: TextStyle(
      fontSize: 24,
      color: Colors.green,
    ),
    textAlign: TextAlign.center,
    textScaleFactor: 0.9, //控制缩放
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    )
    );
  }
}

class MyHomeRichBody extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: "《定风波》" ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.blue)),
            TextSpan(text: "苏轼", style: TextStyle(fontSize: 18, color: Colors.redAccent)),
            TextSpan(text: "\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。")
          ],
        ),
        style: TextStyle(fontSize: 20,color: Colors.pink),
        textAlign: TextAlign.center,
      ),
    );
  }
}