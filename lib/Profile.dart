import 'package:flutter/material.dart';
import 'package:shopping/AppDrawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MAKIAJ',
          style: TextStyle(
              fontSize: 26,
              color: Colors.black54,
              letterSpacing: 2,
              fontWeight: FontWeight.w300),
        ),
      ),
      body: Column(
        children: <Widget>[
          ProfileCard(),
          SizedBox(height: 20,),
          ProfileCards(lineName: 'My Favorits', iconShape: Icons.favorite_border,),
          ProfileCards(lineName: 'My Shopping Bag', iconShape: Icons.shopping_basket,),
          ProfileCards(lineName: 'Sittings', iconShape: Icons.settings,),
          ProfileCards(lineName: 'About MAKIAJ', iconShape: Icons.help_outline,),
          ProfileCards(lineName: 'Customer Service', iconShape: Icons.call,),
          ProfileCards(lineName: 'Log Out', iconShape: Icons.exit_to_app,),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1),
              child: Image(
                height: 200,
                width: 400,
                image: ExactAssetImage('assets/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 12, bottom: 6),
              child: Text(
                'Mohammed Talaat',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class ProfileCards extends StatelessWidget {
  final String lineName;
  final IconData iconShape;
  const ProfileCards({key, required this.lineName, required this.iconShape});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(iconShape),
            ),

            Padding(
              padding:
              const EdgeInsets.only(left: 12,),
              child: Text( lineName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}