import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Initializing First page');
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, 'second_page');
        }, child: const Text('Go to first')),
      ),
    );
  }
}
