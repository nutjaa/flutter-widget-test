import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'step.dart';

Future<void> iEnterTextInKey(
  WidgetTester tester,
  String text,
  String key,
) async {
  final textField = find.byKey(Key(key));
  await tester.enterText(textField, text);
  await iWait(tester);
}
