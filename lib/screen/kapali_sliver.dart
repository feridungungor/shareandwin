import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_winshare_001/view/my_widgets.dart';

Color leftColor = Color(0XFF1D39A3);
Color righrColor = Color(0XFF0E247B);
Color bakiyeColor = Color(0XFF2D3681);
Color altinUye = Color(0XFFEfb01E);
Color InstagremColor = Color(0XFFe96f08);

class KapaliSliver extends StatefulWidget {
  @override
  _KapaliSliverState createState() => _KapaliSliverState();
}

class _KapaliSliverState extends State<KapaliSliver> {
  double sliderValue = 39;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: myScaffold(),
    );
  }

  Scaffold myScaffold() {
    return Scaffold(
      body: Column(
        children: <Widget>[
          myClosedSliver,
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  OneStep,
                  TwoStep,
                  ThreeStep,
                  FourStep,
                  FiveStep,
                  SixStep,
                  SevenStep,
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget hizmetPlatform(String t, String aImg, String pImg) => Container(
        height: 120,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(10, 10))
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 50,
              width: 50,
              child: Image.asset(
                "assets/images/" + aImg,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                t,
                style: TextStyle(
                  color: InstagremColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: InstagremColor),
            ),
          ],
        ),
      );
  Widget myCardWidget(String t, String d) => Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        width: double.maxFinite,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(10, 10),
            ),
          ],
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              left: 40,
              top: 10,
              child: Text(
                t,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            redCounter(d),
          ],
        ),
      );
  Widget redCounter(String d) => Positioned(
        left: -5,
        top: -5,
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(60)),
          child: Center(
            child: Text(
              d,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
  Widget get OneStep => Column(
        children: <Widget>[
          myCardWidget("Hizmet edilecek platformu seçiniz", "1"),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              hizmetPlatform("Instagram", "Instagram-Color@3x.png",
                  "Disabled_Instagram-Color@3x.png"),
              hizmetPlatform("Twitter", "Twitter-Color@3x.png",
                  "Disable_Twitter-Color@3x.png"),
              hizmetPlatform("Youtube", "Youtube-Color@3x.png",
                  "Disable_Youtube-Color@3x.png"),
            ],
          ),
        ],
      );
  Widget get TwoStep => Column(
    children: <Widget>[
      SizedBox(height: 20),
      myCardWidget("Paylaşmak istediğiniz gönderiyi seçin", "2"),
      SizedBox(height: 20),
      Container(
        height: 500,
        width: double.maxFinite,
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: List.generate(
            18,
                (index) {
              return Container(
                child: Image.network("https://picsum.photos/300/300",fit: BoxFit.contain,),
              );
            },
          ),
        ),
      ),
    ],
  ) ;
  Widget get ThreeStep => Column(
    children: <Widget>[
      SizedBox(height: 20),
      myCardWidget("Lorem Ipsum Lorem Ipsum ", "3"),
    ],
  );
  Widget get FourStep => Column(
    children: <Widget>[
      SizedBox(height: 20),
      myCardWidget("Hizmet yöntemi seçiniz ", "4"),
    ],
  );
  Widget get FiveStep => Column(
    children: <Widget>[
    SizedBox(height: 20),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      height: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          redCounter("5"),
          Positioned(
            left: 10,
            top: 20,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.comment,
                      color: Colors.grey,
                      size: 50,
                    ),
                    SizedBox(width: 50),
                    Icon(
                      Icons.repeat,
                      color: Colors.grey,
                      size: 50,
                    ),
                    SizedBox(width: 50),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 50,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Beğeni Adeti Giriniz.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(8, 8),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "10,500",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 10,
                      activeTrackColor: righrColor,
                      inactiveTrackColor: leftColor,
                      thumbColor: Colors.white,
                    ),
                    child: Slider(
                      onChanged: (s) {
                        setState(() {
                          sliderValue = s;
                        });
                      },
                      min: 0,
                      max: 100,
                      value: sliderValue,
                    ),
                  ),
                ),
                Text(
                  "Yorum Adeti Giriniz.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(8, 8),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Minumum 1000",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.withOpacity(.6)),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 10,
                      activeTrackColor: righrColor,
                      inactiveTrackColor: leftColor,
                      thumbColor: Colors.white,
                    ),
                    child: Slider(
                      onChanged: (s) {
                        setState(() {
                          sliderValue = s;
                        });
                      },
                      min: 0,
                      max: 100,
                      value: sliderValue,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ],);
  Widget get SixStep => Column(
    children: <Widget>[
      SizedBox(
        height: 20,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        width: double.maxFinite,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(10, 10),
            ),
          ],
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            redCounter("6"),
            Positioned(
              left: 30,
              top: 20,
              child: Text(
                "Teklifimiz",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
  ],);
  Widget get SevenStep => Column(
    children: <Widget>[
      SizedBox(
        height: 20,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        width: double.maxFinite,
        height: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(10, 10),
            ),
          ],
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            redCounter("7"),
            Positioned(
              left: 20,
              top: 30,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 320,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                          EdgeInsets.only(top: 25, left: 20),
                          child: Text(
                            "Toplam Özet",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          indent: 12,
                          endIndent: 12,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Teklif"),
                              Text("300"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("İndirim"),
                              Text("30%"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("İndirim Kuponu"),
                              Text(
                                "İndirim Kuponu",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                  Colors.blue.withOpacity(.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Bakiyeniz"),
                              Text(
                                "50.55",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                  Colors.green.withOpacity(.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          indent: 12,
                          endIndent: 12,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Tutar",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19),
                              ),
                              Text(
                                "249.55",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 55,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0XFFf54e5f)),
                    child: Center(
                      child: Text(
                        "SİPARİŞ VER",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ],);
  Widget get myClosedSliver => Stack(
    children: <Widget>[
      Positioned(
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              color: leftColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
              )),
        ),
      ),
      Positioned(
        child: ClipPath(
          clipper: myClosedClipper(),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: righrColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                )),
          ),
        ),
      ),
      Positioned(
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0XFFef5350).withOpacity(.4),
                Colors.black.withAlpha(0),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
            ),
          ),
        ),
      ),
      Positioned(
        right: 30,
        top: 40,
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.apps,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Stack(
                      children: <Widget>[
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 35,
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Bakiyeniz",
                  style: TextStyle(
                      color: Colors.white.withOpacity(.6),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text(
                      "50.55",
                      style:
                      TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Kara Göz",
                          style: TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Altın Üye",
                          style: TextStyle(color: altinUye),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Text(
                        "KG",
                        style: TextStyle(color: Colors.teal),
                      ),
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Saydam(),
              ],
            )
          ],
        ),
      ),
    ],
  );
}
