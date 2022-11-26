import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Profile.dart';


void main() => runApp(ShoppingApp());

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffffa5a5),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Infinity Closet',
                style: TextStyle(fontSize: 20),
              ),
              accountEmail: Text(
                'samik1809@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/profile.jpg'),
                ),
              ),
            ),
            Column(children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Profile();
                  }));



                },
                child: ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.person_outline,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MainPage();
                  }));

                },
                child: ListTile(
                  title: Text(
                    'Home Page',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    'My Orders',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.shopping_basket,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    'Home Page',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    'Shopping Cart',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    'Favourits',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    'Categories',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.dashboard,
                    size: 30,
                  ),
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(
                    Icons.help_outline,
                    size: 30,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Infinity Closet',
          style: TextStyle(
              fontSize: 26,
              color: Colors.black54,
              letterSpacing: 2,
              fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Container(
        child:
        ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomePage(),
          ],
        ),
        ])
      ),
    );
  }
}
