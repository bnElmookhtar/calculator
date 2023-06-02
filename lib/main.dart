import 'package:flutter/material.dart';

import 'layout/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcultor',
      home: Home(),
        debugShowCheckedModeBanner: false,

    );
  }
}

