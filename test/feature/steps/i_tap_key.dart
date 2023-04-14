import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iTapKey(WidgetTester tester, String key) async {
  await tester.tap(find.byKey(Key(key)).first);
  await tester.pumpAndSettle();
}
