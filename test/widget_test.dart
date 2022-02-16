// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_app/pages/first_page.dart';
import 'package:testing_flutter_app/pages/second_page.dart';

void main() {
  Widget makeTest(Widget child) {
    return MaterialApp(
      initialRoute: 'first_page',
      routes: {
        'first_page': (BuildContext context) => const FirstPage(),
        'second_page': (BuildContext context) => const SecondPage(),
      },
    );
  }

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(makeTest(const FirstPage()));

    expect(find.text('Go to first'), findsOneWidget);
    await tester.tap(find.text('Go to first'));
    await tester.pumpAndSettle(const Duration(milliseconds: 300));

    expect(find.text('Press Me'), findsOneWidget);
    await tester.tap(find.text('Press Me'));
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('AlertDialog Title'), findsOneWidget);
    expect(find.text('AlertDialog description'), findsOneWidget);
    expect(find.text('OK'), findsOneWidget);
    await tester.tap(find.text('OK'));
    await tester.pump(const Duration(milliseconds: 300));

    expect(find.text('Go to first'), findsOneWidget);
  });
}
