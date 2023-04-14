import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> theScreenIsRunning(WidgetTester tester, Widget widget) async {
  await tester.pumpWidget(MaterialApp(
    home: widget,
  ));
  await tester.pump();
}
