import 'package:flutter/material.dart';
import 'package:flutter_winshare_001/view/my_widgets.dart';

Color leftColor = Color(0XFF1D39A3);
Color righrColor = Color(0XFF0E247B);
Color bakiyeColor = Color(0XFF2D3681);
Color altinUye = Color(0XFFEfb01E);

class AcikSliver extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: 350,
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
              clipper: myOpenedClipper(),
              child: Container(
                height: 350,
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
              height: 350,
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
                  )),
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
                          style: TextStyle(color: Colors.white, fontSize: 30),
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
                    Saydam()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

