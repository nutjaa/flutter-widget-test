import 'package:flutter_test/flutter_test.dart';

import 'package:wigget_testing/main.dart' as app;

Future<void> theAppIsRunning(WidgetTester tester) async {
  app.main();
  await tester.pumpAndSettle();
}
