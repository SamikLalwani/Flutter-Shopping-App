import 'package:flutter/material.dart';


class DrawCard extends StatelessWidget {
  const DrawCard(
      {required this.cardImage,
        required this.cardDiscount,
        required this.cardPrice,
        required this.productName});

  final String cardImage;
  final String cardDiscount;
  final String cardPrice;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12),
            child: Image(
              height: 150,
              width: 160,
              image: ExactAssetImage(cardImage),
//                height: MediaQuery.of(context).size.height*.25,
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text(
              productName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1), color: Colors.red),
                padding: EdgeInsets.all(2),
                child: Text(
                  '$cardDiscount% Discount',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                ),
                padding: EdgeInsets.all(2),
                child: Text(
                  cardPrice,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 14, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 28,
                ),
                Icon(Icons.add_shopping_cart),
                SizedBox(
                  width: 28,
                ),
                Icon(Icons.share),
              ],
            ),
          )
        ],
      ),
    );
  }
}
