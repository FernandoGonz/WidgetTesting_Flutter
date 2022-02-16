import 'package:flutter/material.dart';
import 'package:testing_flutter_app/pages/first_page.dart';
import 'package:testing_flutter_app/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'first_page',
      routes: {
        'first_page': (BuildContext context) => const FirstPage(),
        'second_page': (BuildContext context) => const SecondPage(),
      },
    );
  }
}