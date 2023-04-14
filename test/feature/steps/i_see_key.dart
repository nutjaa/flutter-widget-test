import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeKey(WidgetTester tester, String key) async {
  expect(find.byKey(Key(key)), findsOneWidget);
}
