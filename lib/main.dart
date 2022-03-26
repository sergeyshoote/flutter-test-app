import 'package:flutter/material.dart';

import './products_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EasyList'),
        ),
        body: ProductManager(
          startingProduct: 'Food Tester',
        ),
      ),
    );
  }
}
