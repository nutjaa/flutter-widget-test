import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:wigget_testing/components/common/molecules/pin_keyboard.dart';

import 'steps/step.dart';
import '../../test/feature/steps/step.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('''pin setup page test''', () {
    testWidgets('''As user, i can see pin setup screen''', (tester) async {
      //
      await theAppIsRunning(tester);
      await iSeeKey(tester, 'landing_screen');
      await iSeeKey(tester, 'combine_button');
      await iTapKey(tester, 'combine_button');
      await iSeeKey(tester, 'combine_example_screen');
      await iSeeWidgetType(tester, PinKeyboard, 1);
      await iSeeText(tester, 'Pin code demo', 1);
      await iSeeKey(tester, 'common_number_keyboard_0');
      await iSeeKey(tester, 'common_number_keyboard_1');
      await iSeeKey(tester, 'common_number_keyboard_2');
      await iSeeKey(tester, 'common_number_keyboard_3');
      await iSeeKey(tester, 'common_number_keyboard_4');
      await iSeeKey(tester, 'common_number_keyboard_5');
      await iSeeKey(tester, 'common_number_keyboard_6');
      await iSeeKey(tester, 'common_number_keyboard_7');
      await iSeeKey(tester, 'common_number_keyboard_8');
      await iSeeKey(tester, 'common_number_keyboard_9');
      await iSeeKey(tester, 'common_number_keyboard_backspace');

      await iTapPinCodeWithValue(tester, '111111');
      await iSeeText(tester, 'invalid format', 1);

      await iTapPinCodeWithValue(tester, '555555');
      await iSeeText(tester, 'invalid format', 1);

      await iTapPinCodeWithValue(tester, '123456');
      await iSeeText(tester, 'invalid format', 1);

      await iTapPinCodeWithValue(tester, '456789');
      await iSeeText(tester, 'invalid format', 1);

      await iTapPinCodeWithValue(tester, '112233');
      await iSeeText(tester, 'success', 1);
    });
  });
}
