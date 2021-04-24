import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // drawerheader
          UserAccountsDrawerHeader(
            accountName: Text("Snehal Bhoya"),
            accountEmail: Text("bhoya@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text("S"),
              backgroundColor: Colors.white,
            ),
            decoration: BoxDecoration(color: Colors.red),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text("B"),
                backgroundColor: Colors.white,
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home Page"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("My Account"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("My Orders"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Categories"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favourit"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
              title: Text("About"),
            ),
          ),
        ],
      ),
    );
  }
}
