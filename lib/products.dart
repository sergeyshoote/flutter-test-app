import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  const Products(this.products, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpeg'),
                  Text(element)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
