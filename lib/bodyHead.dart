import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class BodyHead extends StatefulWidget {
  @override
  _BodyHeadState createState() => _BodyHeadState();
}

class _BodyHeadState extends State<BodyHead> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        imageCarousel,
      ],
    );
  }
}

Widget imageCarousel = Container(
  height: 200,
  child: Carousel(
//    boxFit: BoxFit.cover,
    images: [
      Ink.image(
        image: ExactAssetImage('assets/makeup04.jpg'),
        fit: BoxFit.cover,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              '50%',
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              'SALE',
              style: TextStyle(fontSize: 50, color: Colors.white),
            )
          ],
        ),
      ),
      Ink.image(
        image: ExactAssetImage('assets/makeup01.png'),
        fit: BoxFit.cover,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20,),
            Text(
              '50%',
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(width: 30,),
            Text(
              'SALE',
              style: TextStyle(fontSize: 50, color: Colors.white),
            )
          ],
        ),
      ),
      Ink.image(
        image: ExactAssetImage('assets/makeup04.jpg'),
        fit: BoxFit.cover,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20,),
            Text(
              '50%',
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(width: 30,),
            Text(
              'SALE',
              style: TextStyle(fontSize: 50, color: Colors.white),
            )
          ],
        ),
      ),
      Ink.image(
        image: ExactAssetImage('assets/makeup02.png'),
        fit: BoxFit.cover,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20,),
            Text(
              '50%',
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(width: 30,),
            Text(
              'SALE',
              style: TextStyle(fontSize: 50, color: Colors.white),
            )
          ],
        ),
      ),
    ],

    dotColor: Colors.black54,
    dotBgColor: Color(0x88ffd9df),
    dotIncreasedColor: Color(0xffff8989),
  ),
);
