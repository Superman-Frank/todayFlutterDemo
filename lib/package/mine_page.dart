import 'package:flutter/material.dart';
import 'package:todayflutterapp/const.dart';
class MinePage extends StatelessWidget{
    String imagename;
    String title;
    @required VoidCallback onTap;
    MinePage(this.imagename,this.title,{this.onTap});
    @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 54,
            child: _mineItem(imagename,  title),
          ),
          Container(
            color: Color(0xffeaeaea),
            //设置约束
            constraints: BoxConstraints.expand(height: 1.0),
          )
        ],
      ),
    );
  }
//  _MinePageState cre
}

//自定义一个cell插件
/*
* 正常情况下使用方式：
* InkWell(
      onTap: () { },
      child: Container(
               height: 50,
               child: Text( "是速度",
                          maxLines: 1,
                          style: TextStyle(color: color),
                          overflow: TextOverflow.ellipsis,
                              ),
          ),
  )
* */
//去除水波纹
Widget _mineItem(String imageName,String title) {
  return InkWell(
    onTap: (){
    },
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(left: 16),
            child: Image.asset(
              imageName,
              width: 30,
              height: 30,
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),

          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Icon(
              Icons.keyboard_arrow_right,
              size: 20,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}



