import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'gridproducts.dart';
import 'horizontalview.dart';
import 'my_drawer.dart';
import 'pages/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget imagecarousel() {
    return Container(
      height: 210.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/m1.jpg"),
          AssetImage("assets/images/m2.jpg"),
          AssetImage("assets/images/snehhh.jpeg"),
          AssetImage("assets/images/Vagies.png"),
          AssetImage("assets/images/ferrari.jpg"),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: Text("My Shop"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              }),
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          //image carousel
          imagecarousel(),
          // padding widget
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("categories"),
          ),
          //HorizontalListview
          HorizontalView(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Items"),
          ),
          // items view
          Products(),
        ],
      ),
    );
  }
}
