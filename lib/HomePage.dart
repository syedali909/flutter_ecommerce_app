import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_ecommerce_app/component/Horzontal_List.dart';
import 'package:flutter_ecommerce_app/component/Product.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 300.0,
      child:  new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/w3.jpeg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return new Scaffold(
        appBar: new AppBar(
            elevation: 0.5,
            centerTitle: true,
            backgroundColor: Colors.red,
            title: Text("FashApp"),
            actions: <Widget>[
               IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
              IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null)

            ],

        ),

        drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Syed Faisal Ali"),
              accountEmail: Text("syedali909@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white),
              ),
            ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
            InkWell(
              onTap: (){},
            child :ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            ),
            ),
            InkWell(
              onTap: (){},
              child :ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child :ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){},
              child :ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child :ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(
              color: Colors.blue,
            ),

            InkWell(
              onTap: (){},
              child :ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child :ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.green,),
              ),
            ),
          ],
        )
        ),
        body: ListView(
          children: <Widget>[
            image_carousel,
            Padding(padding: const EdgeInsets.all(8.0),
              child: Text("Catagoires") , ),

            HorzontalList(),

            Padding(padding: const EdgeInsets.all(20.0),
              child: Text("Recent Product") , ),

            Container(
              height: 330,
              child : Product(),
            )
          ],
        )

    );
  }
}