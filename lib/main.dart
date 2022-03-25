import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EasyList'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              child: const Text('Add Product'),
              onPressed: () {
                setState(() {
                  _products.add('Advance Food Tester');
                });
              },
            ),
            Column(
              children: _products
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
            ),
          ],
        ),
      ),
    );
  }
}
