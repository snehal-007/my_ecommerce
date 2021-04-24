import 'package:flutter/material.dart';
import 'my_drawer.dart';

class PageNew extends StatefulWidget {
  @override
  _PageNewState createState() => _PageNewState();
}

class _PageNewState extends State<PageNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New page"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}
