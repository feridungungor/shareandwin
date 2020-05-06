import 'dart:ui';

import 'package:flutter/material.dart';

Widget Saydam() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        height: 60,
        width: 140,
        color: Colors.white.withOpacity(0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "Bakiye Ekle",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
class myOpenedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(240, 0);
    path.lineTo(0.0, size.height - 100);
    path.lineTo(0.0, size.height);
    path.lineTo(260, 350);
    path.lineTo(size.width, size.height - 150);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
class myClosedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(size.width - 210, 0);
    path.lineTo(0.0, size.height - 50);
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