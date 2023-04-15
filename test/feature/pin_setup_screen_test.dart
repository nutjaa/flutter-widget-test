import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:wigget_testing/components/combine_example/view/combine_example_screen.dart';
import 'package:wigget_testing/components/common/molecules/pin_circle_active.dart';
import 'package:wigget_testing/components/common/molecules/pin_circle_inactive.dart';
import 'package:wigget_testing/components/common/molecules/pin_input_body.dart';
import 'package:wigget_testing/components/common/molecules/pin_input_progress.dart';
import 'package:wigget_testing/components/common/molecules/pin_keyboard.dart';
import 'steps/step.dart';

void main() {
  group('''Pin setup screen''', () {
    testWidgets('''As user, i can see pin setup screen''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iSeeWidgetType(tester, PinInputBody, 1);
      await iSeeWidgetType(tester, PinCircleInactive, 6);
      await iSeeWidgetType(tester, PinInputProgress, 1);
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
    });

    testWidgets('''As user, i can pres backspace''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapKey(tester, 'common_number_keyboard_1');
      await iTapKey(tester, 'common_number_keyboard_2');
      await iSeeWidgetType(tester, PinCircleActive, 2);
      await iSeeWidgetType(tester, PinCircleInactive, 4);
      await iTapKey(tester, 'common_number_keyboard_backspace');
      await iSeeWidgetType(tester, PinCircleActive, 1);
      await iSeeWidgetType(tester, PinCircleInactive, 5);
    });

    testWidgets('''pincode 111111 should invalid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '111111');
      await iSeeText(tester, 'invalid format', 1);
    });

    testWidgets('''pincode 555555 should invalid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '555555');
      await iSeeText(tester, 'invalid format', 1);
    });

    testWidgets('''pincode 123456 should invalid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '123456');
      await iSeeText(tester, 'invalid format', 1);
    });

    testWidgets('''pincode 456789 should invalid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '456789');
      await iSeeText(tester, 'invalid format', 1);
    });

    testWidgets('''pincode 654321 should invalid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '654321');
      await iSeeText(tester, 'invalid format', 1);
    });

    testWidgets('''pincode 987654 should invalid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '987654');
      await iSeeText(tester, 'invalid format', 1);
    });

    testWidgets('''pincode 122223 should invalid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '122223');
      await iSeeText(tester, 'invalid format', 1);
    });

    testWidgets('''pincode 599994 should invalid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '599994');
      await iSeeText(tester, 'invalid format', 1);
    });

    testWidgets('''pincode 112233 should valid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '112233');
      await iSeeText(tester, 'success', 1);
    });

    testWidgets('''pincode 665321 should valid''', (tester) async {
      await theWidgetIsRunning(tester, const CombineExampleScreen());
      await iTapPinCodeWithValue(tester, '665321');
      await iSeeText(tester, 'success', 1);
    });

    testGoldens('''pincode set up screen verified''', (tester) async {
      await theScreenIsRendered(tester, const CombineExampleScreen());
      await screenshotVerified(tester, 'pin_setup_screen');
    });

    testGoldens('''pincode set up screen verified with 3 active code''', (tester) async {
      await theScreenIsRendered(tester, const CombineExampleScreen());
      await iTapKey(tester, 'common_number_keyboard_1');
      await iTapKey(tester, 'common_number_keyboard_2');
      await iTapKey(tester, 'common_number_keyboard_3');
      await screenshotVerified(tester, 'pin_setup_screen_with_3_active');
    });
  });
}
