import 'package:flutter/material.dart';
import 'package:shopping/Card.dart';

class Suggested extends StatefulWidget {
  @override
  _SuggestedState createState() => _SuggestedState();
}

class _SuggestedState extends State<Suggested> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          DrawCard(
            cardImage: 'assets/01.png',
            cardDiscount: '5',
            cardPrice: '3299',
            productName: 'Natural skin skyblue bag',
          ),
          DrawCard(
            cardImage: 'assets/02.png',
            cardDiscount: '25',
            cardPrice: '1499',
            productName: 'Silver ring for women',
          ),
          DrawCard(
            cardImage: 'assets/03.png',
            cardDiscount: '50',
            cardPrice: '799',
            productName: 'Bluetooth headphone',
          ),
          DrawCard(
            cardImage: 'assets/04.png',
            cardDiscount: '75',
            cardPrice: '2199',
            productName: 'Adidas winter jacket',
          ),
          DrawCard(
            cardImage: 'assets/05.png',
            cardDiscount: '75',
            cardPrice: '199',
            productName: 'Wristwatch for women',
          ),
          DrawCard(
            cardImage: 'assets/06.png',
            cardDiscount: '75',
            cardPrice: '199',
            productName: 'Natural skin',
          ),
        ],
      ),
    );
  }
}

