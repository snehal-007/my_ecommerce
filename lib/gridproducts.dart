import 'package:flutter/material.dart';
import 'package:my_shop/pages/products_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Shirt",
      "picture": "assets/images/snehhh.jpeg",
      "old_price": 8000,
      "price": 6999
    },
    {
      "name": "T-Shirt",
      "picture": "assets/images/snehhh.jpeg",
      "old_price": 5000,
      "price": 4999
    },
    {
      "name": "Pant",
      "picture": "assets/images/snehhh.jpeg",
      "old_price": 4000,
      "price": 6999
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          height: 200.0,
          child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product_list.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext ctxt, int index) {
                return Single_prod(
                  prod_name: product_list[index]["name"],
                  prod_picture: product_list[index]["picture"],
                  prod_old_price: product_list[index]["old_price"],
                  prod_price: product_list[index]["price"],
                );
              }),
        ))
      ],
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 1.0,
        horizontal: 1.9,
      ),
      child: InkWell(
        // we are passing the values of products details to product detail page
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Product_detail(
                  prod_detail_name: prod_name,
                  prod_detail_picture: prod_picture,
                  prod_detail_old_price: prod_old_price,
                  prod_detail_price: prod_price,
                ))),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Image.asset(
                    prod_picture,
                    height: 120.0,
                  ),
                ),
                Container(
                  child: Text(
                    prod_name,
                    style: TextStyle(
                      fontSize: 20.7,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "${prod_price} Rs",
                    style: TextStyle(
                      fontSize: 12.7,
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
