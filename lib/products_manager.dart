import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  const ProductManager({Key? key}) : super(key: key);

  @override
  State<ProductManager> createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text('Add Product'),
          onPressed: () {
            setState(() {
              _products.add('Advance Food Tester');
            });
          },
        ),
        Products(_products)
      ],
    );
  }
}
