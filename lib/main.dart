import 'package:flutter/material.dart';
import 'package:flutter_winshare_001/screen/acik%20_sliver.dart';
import 'package:flutter_winshare_001/screen/with_button.dart';
import 'package:flutter_winshare_001/screen/with_scroll.dart';
import 'package:flutter_winshare_001/screen/kapali_sliver.dart';
import 'package:flutter_winshare_001/screen/pay.dart';
import 'package:flutter_winshare_001/screen/sliver_scroll.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: SliverScroll(),
//      home: AcikSliver(),
//      home: KapaliSliver(),
//      home: withScroll(),
      home: withButton(),
//      home: Pay(),

    );
  }
}
