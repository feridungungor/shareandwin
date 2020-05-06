import 'package:flutter/material.dart';

Color leftColor = Color(0XFF1D39A3);
Color righrColor = Color(0XFF0E247B);
Color bakiyeColor = Color(0XFF2D3681);
Color altinUye = Color(0XFFEfb01E);

class SliverScroll extends StatefulWidget {
  @override
  _SliverScrollState createState() => _SliverScrollState();
}

class _SliverScrollState extends State<SliverScroll> with TickerProviderStateMixin{

  bool isHeaderClose = false;
  double lastOffset = 0;
  ScrollController scrollController;
  final formKey = GlobalKey<FormState>();
  double dedede = 350;

// print(Deneme(50,10,100,1,10).toString());
  // Deneme(animation.value, 200, 350, 50, 180)
  double Deneme(double ax,double a1,double a2,double b1,double b2,){
    double dd = (b1*(ax-a2)+b2*(a1-ax))/(a1-a2);
    return dd;
  }


  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener((){

dedede = formKey.currentContext.size.height;

if(scrollController.offset<=0){
  isHeaderClose = false;
}else if(scrollController.offset>=scrollController.position.maxScrollExtent){
  isHeaderClose = true;
}
else{
  isHeaderClose = scrollController.offset > lastOffset ? true :false;
}
      setState(() {
        lastOffset = scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
//                  height: roone ? 350 : 200,
                  height: isHeaderClose ? 200 : 350,
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
//                  clipper: myCustomClipper(Deneme(isHeaderClose ? 200 : 350, 200, 350, 50, 180)),
                  clipper: myCustomClipper(Deneme(dedede, 200, 350, 50, 180)),
                  child: AnimatedContainer(
                    key: formKey,
                    duration: Duration(milliseconds: 400),
                    height: isHeaderClose ? 200 : 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: righrColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  height: isHeaderClose ? 200 : 350,
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
                        Container(
                          height: 60,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: bakiyeColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                "Bakiye Ekle",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: <Widget>[
                  Container(margin: EdgeInsets.all(8),height: 300,color: Colors.black,),
                  Container(margin: EdgeInsets.all(8),height: 300,color: Colors.black,),
                  Container(margin: EdgeInsets.all(8),height: 300,color: Colors.black,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class myCustomClipper extends CustomClipper<Path> {
  double i;

  myCustomClipper(this.i);

  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(size.width - 210, 0);
    path.lineTo(0.0, size.height - i);
    path.lineTo(0.0, size.height);
    path.lineTo(260, size.height);
    path.lineTo(size.width, size.height - 120);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
