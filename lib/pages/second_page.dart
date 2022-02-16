import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Initializing First page');
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Press Me'),
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('AlertDialog Title'),
                content: const Text('AlertDialog description'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushReplacementNamed(context, 'first_page'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );;
  }
}