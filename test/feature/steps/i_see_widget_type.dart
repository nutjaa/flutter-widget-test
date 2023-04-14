import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeWidgetType(WidgetTester tester, Type type, int number) async {
  expect(find.byType(type), number == 1 ? findsOneWidget : findsNWidgets(number));
}
