import 'package:flutter/material.dart';
//import 'package:my_app/pages/tabs_page.dart';
import 'package:my_app/pages/first/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FirstPage(),
    );
  }
}
