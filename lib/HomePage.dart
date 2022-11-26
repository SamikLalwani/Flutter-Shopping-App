import 'package:flutter/material.dart';
import 'bodyHead.dart';
import 'Categories.dart';
import 'LastSeen.dart';
import 'Suggested.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        BodyHead(),
        //category
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            'Categories',
            style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
              letterSpacing: 1.2,
            ),
          ),
        ),

        Categories(),

        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            'Suggested',
            style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
              letterSpacing:1.2,
            ),
          ),
        ),

        Suggested(),

        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            'Last Seen',
            style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
              letterSpacing:1.2,
            ),
          ),
        ),

        LastSeen(),
      ],
    );
  }
}
