import 'package:flutter/material.dart';
import 'package:flutter_winshare_001/screen/with_scroll.dart';
import 'package:flutter_winshare_001/screen/with_button.dart';
import 'package:flutter_winshare_001/screen/pay.dart';

Color leftColor = Color(0XFF1D39A3);
Color righrColor = Color(0XFF0E247B);
Color bakiyeColor = Color(0XFF2D3681);
Color altinUye = Color(0XFFEfb01E);
Color customblue = Color(0XFF47bcff);
Color customgreen = Color(0XFF00ba13);
Color InstagremColor = Color(0XFFe96f08);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: withButton(),
    home: WithScroll(),
//    home: Pay(),
    );
  }
}
