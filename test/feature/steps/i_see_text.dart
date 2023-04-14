import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeText(WidgetTester tester, String text, int number) async {
  expect(find.text(text), number == 1 ? findsOneWidget : findsNWidgets(number));
}
