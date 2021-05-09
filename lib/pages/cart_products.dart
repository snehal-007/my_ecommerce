import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_the_cart = [
    {
      "name": "Shirt",
      "picture": "assets/images/snehhh.jpeg",
      "price": 6999,
      "size": "L",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "T-Shirt",
      "picture": "assets/images/snehhh.jpeg",
      "price": 4999,
      "size": "XL",
      "color": "Blue",
      "quantity": 2
    }
  ];

  Widget customcard(String name) {
    return Card(
      child: ListTile(
        title: Text("snehal cool"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          height: 700.0,
          child: new ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: product_on_the_cart.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext ctxt, int index) {
                return Single_cart(
                  cart_prod_name: product_on_the_cart[index]["name"],
                  cart_prod_picture: product_on_the_cart[index]["picture"],
                  cart_prod_price: product_on_the_cart[index]["price"],
                  cart_prod_size: product_on_the_cart[index]["size"],
                  cart_prod_color: product_on_the_cart[index]["color"],
                  cart_prod_qty: product_on_the_cart[index]["qty"],
                );
              }),
        ))
      ],
    );

    // return Card(
    //   child: ListTile(
    //     title: Text("Snehal"),
    //   ),
    // );
  }
}

class Single_cart extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });

  Widget customcard() {
    return Card(
      child: ListTile(
        title: Text("snehal cool"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Image.asset(
              cart_prod_picture,
              height: 80.0,
            ),
          ),
          Container(
            child: Text(
              cart_prod_name,
              style: TextStyle(
                fontSize: 20.7,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            child: Text(
              "${cart_prod_price} Rs",
              style: TextStyle(
                fontSize: 12.7,
                color: Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
