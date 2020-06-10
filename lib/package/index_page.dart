import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "contact_page.dart";
import 'home_page.dart';
import 'fun_page.dart';
import 'mine_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int currentIndex = 1;

  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text("首页"),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      title: Text("联系人"),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.circle),
      title: Text("朋友圈"),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.settings),
      title: Text("个人中心"),
    ),
  ];

  final List tabBodies = [
    HomePage(),
    ContactPage(),
    FunPage(),
    MinePage('Hello','Hello'),
  ];

  var currentPage;

  @override
  void initState() {
    super.initState();
    currentPage = tabBodies[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}


