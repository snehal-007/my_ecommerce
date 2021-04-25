import 'package:flutter/material.dart';

class Product_detail extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_old_price;
  final prod_detail_price;

  Product_detail(
      {this.prod_detail_name,
      this.prod_detail_picture,
      this.prod_detail_old_price,
      this.prod_detail_price});

  @override
  _Product_detailState createState() => _Product_detailState();
}

class _Product_detailState extends State<Product_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: Text("Product Details"),
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
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_picture),
              ),
            ),
          ),
          Container(
            child: Text(
              widget.prod_detail_name,
              style: TextStyle(fontSize: 43.4, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
