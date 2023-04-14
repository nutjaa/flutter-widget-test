import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iNotSeeObscureTextInKey(WidgetTester tester, String key) async {
  final passwordTextFormField = find.descendant(
    of: find.byKey(Key(key)),
    matching: find.byType(EditableText),
  );
  final input = tester.widget<EditableText>(passwordTextFormField);
  expect(input.obscureText, false);
}
