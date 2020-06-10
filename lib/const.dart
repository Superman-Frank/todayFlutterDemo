import 'package:flutter/material.dart';
final Color MyAppThemeColor = Color.fromRGBO(220, 220, 220, 1);

//屏幕宽高
double ScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double ScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;