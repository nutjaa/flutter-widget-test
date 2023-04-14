import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> theWidgetIsRunning(WidgetTester tester, Widget widget) async {
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: widget,
      ),
    ),
  ));
  await tester.pump();
}
