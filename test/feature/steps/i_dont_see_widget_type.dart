import 'package:flutter_test/flutter_test.dart';

Future<void> iDontSeeWidgetType(
  WidgetTester tester,
  Type type,
) async {
  expect(find.byType(type), findsNothing);
}
