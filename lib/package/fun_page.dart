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
      ),
    );
  }
}