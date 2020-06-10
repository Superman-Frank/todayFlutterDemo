import 'package:flutter/material.dart';
import 'package:todayflutterapp/const.dart';
import 'contact_detail.dart';

class ContactPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Lakers',style: TextStyle(color: Colors.yellow),),
        actions: <Widget>[
          IconButton(
        icon: Icon(Icons.print),
            color: Colors.yellow,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ContactDetail();
              }));
            },
      ),
        ],
      ),
      body:MyContactBody(),
      backgroundColor: Colors.black54,

    );
  }
}

class ProductItem extends StatelessWidget
{
  final String title;
  final String desc;
  final String imageUrl;

  ProductItem(this.title,this.desc,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(//使用column为了让三个ProductItem垂直排列
      children: <Widget>[
        Text(title,style: TextStyle(fontSize: 25,color: Colors.purple),textAlign: TextAlign.left,),
        Text(desc,style: TextStyle(fontSize: 18,color: Colors.yellow),textAlign: TextAlign.left,),
        SizedBox(height: 10,),//图片和文字之间加上10个像素
        Image.network(imageUrl),
      ],
    );
  }
}

class MyContactBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child:ListView(
        children: <Widget>[
          ProductItem('勒布朗詹姆斯', '湖人队小前锋兼控球后卫', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2499105841,4163595927&fm=26&gp=0.jpg'),
          ProductItem('安东尼戴维斯', '湖人队大前锋兼中锋', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591781076033&di=dcf7a1442cc4c1577fa4f80be965f868&imgtype=0&src=http%3A%2F%2Fimgcdn.toutiaoyule.com%2F20200517%2F20200517110540253849a.jpg'),
          ProductItem('德怀特霍华德', '湖人队中锋', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1238999443,2428546891&fm=15&gp=0.jpg'),
        ],
      ),
    );
  }
}