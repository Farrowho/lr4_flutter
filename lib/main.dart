import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Список элементов',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Список элементов'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            num x = pow(2, index);
            return ListTile(
              title: Text('2 ^ $index = $x'),
              shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.vertical()),
            );
          },
        ),
      ),
    );
  }
}
