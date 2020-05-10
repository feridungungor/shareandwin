import 'package:flutter/material.dart';
import 'package:flutter_winshare_001/view/my_widgets.dart';

import '../main.dart';



class Pay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          myClosedSliver,
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                height: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 8),
                    myGreenText,
                    SizedBox(height: 15),
                    myCards,
                    SizedBox(height: 20),
                    TextField(
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                          hintText: "  Kart üstündeki isim",
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(.8),
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      cursorColor: customblue,
                      decoration: InputDecoration(
                        hintText: "  Kart Numarası",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    myTextOne,
                    myCardInformation,
                    SizedBox(height: 30),
                    myCheckbox,
                    SizedBox(height: 35),
                    myButton,
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

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
                                    shape: BoxShape.circle, color: Colors.red),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
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
  Widget get myGreenText => Container(
        height: 40,
        color: customgreen,
        child: Align(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Bu ödeme işlemi 256 bit SSL sertifisı tarafından korunmuştur",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      );
  Widget get myCards => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          theCard(35),
          SizedBox(width: 8),
          theCard(35),
          SizedBox(width: 8),
          theCard(35),
          SizedBox(width: 8),
          theCard(35),
          SizedBox(width: 8),
          theCard(35),
        ],
      );
  Widget get myCheckbox => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: customblue, width: 8),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            width: 35,
            height: 35,
            child: Transform.scale(
              scale: 1.6,
              child: Checkbox(
                activeColor: customblue,
                value: true,
                tristate: false,
                onChanged: (bool isChecked) {},
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Gelecekteki işlerim için kaydet",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ],
      );
  Widget get myButton => Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: customblue,
        ),
        child: Center(
          child: Text(
            "249.55 TL ÖDE",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      );
  Widget get myCardInformation => Row(
    children: <Widget>[
      Container(
        width: 50,
        child: TextField(
          cursorColor: Colors.blue,
          decoration: InputDecoration(
            hintText: "  MM",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      SizedBox(width: 10),
      Text(
        "/",
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ),
      SizedBox(width: 10),
      Container(
        width: 50,
        child: TextField(
          cursorColor: Colors.blue,
          decoration: InputDecoration(
            hintText: "  YY",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      SizedBox(width: 80),
      Container(
        width: 150,
        child: TextField(
            decoration: InputDecoration(
              hintText: '  CVV',
              hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold),
              suffixIcon: Icon(
                Icons.credit_card,
                color: Colors.blue,
              ),
            )),
      ),
    ],
  );
  Widget get myTextOne =>  Align(
    alignment: Alignment.centerLeft,
    child: Text(
      "Geçerlilik Tarihi",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  Widget theCard(double _height) =>  Container(
    height: _height,
    child: Image.asset(
      "assets/images/mastercard.png",
      fit: BoxFit.contain,
    ),
  );
}
