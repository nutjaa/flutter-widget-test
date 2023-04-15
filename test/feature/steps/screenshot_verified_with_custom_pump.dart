import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> screenshotVerifiedWithCustomPump(WidgetTester tester, String scenario, int milliseconds) async {
  await multiScreenGolden(
    tester,
    scenario,
    customPump: (tester) => tester.pump(
      Duration(milliseconds: milliseconds),
    ),
  );
}
