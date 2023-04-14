import 'package:flutter_test/flutter_test.dart';

import 'i_tap_key.dart';

Future<void> iTapPinCodeWithValue(WidgetTester tester, String value) async {
  for (int i = 0; i < value.length; i++) {
    await iTapKey(tester, 'common_number_keyboard_${value[i]}');
  }
}
