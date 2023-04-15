import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> theScreenIsRendered(WidgetTester tester, Widget widget) async {
  await tester.pumpWidgetBuilder(MaterialApp(
    home: widget,
  ));
  await tester.pump();
}
