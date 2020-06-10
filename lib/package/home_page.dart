import 'package:flutter/material.dart';
import 'package:todayflutterapp/const.dart';
var PersonList = [
  "LBJ",
  "JM",
  'AD',
  'AB',
  'DW',
  'DH',
  'DG',
  'RR',
  'MM',
  'AC',
  'CC',
  'FV',
];

//getList(){
//  Iterable<Widget> listTitles = PersonList.map((String titles){
//    return new ListTile(
//      isThreeLine: true,
//      dense: false,
//      leading: new CircleAvatar(child: new Text(titles),),
//      title: new Text('湖人队名单'),
//      subtitle: new Text('LosAngles Lakers'),
//      trailing: new Icon(Icons.arrow_right,color: Colors.redAccent,),
//    );
//  });
//  return listTitles.toList();
//}

class HomePage extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(
        '首页',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      backgroundColor: MyAppThemeColor,),
    );
    Text('sdssfff');
  }
}
