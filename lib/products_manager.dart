import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<ProductManager> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager State] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
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
