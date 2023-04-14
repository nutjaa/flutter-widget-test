import 'package:flutter_test/flutter_test.dart';
import 'package:wigget_testing/components/common/molecules/password_text_input.dart';
import 'steps/step.dart';

void main() {
  group('''Password text input''', () {
    testWidgets('''As user, i can toggle password visibility''', (tester) async {
      await theWidgetIsRunning(tester, PasswordTextInput(label: 'Label', validator: (_) => null, tag: 'password_text_input'));
      await iSeeKey(tester, 'password_text_input');
      await iSeeKey(tester, 'password_text_input_show_password');
      await iSeeText(tester, 'Label', 1);
      await iEnterTextInKey(tester, '123456', 'password_text_input');
      await iSeeObscureTextInKey(tester, 'password_text_input');
      await iTapKey(tester, 'password_text_input_show_password');
      await iNotSeeObscureTextInKey(tester, 'password_text_input');
      await iTapKey(tester, 'password_text_input_show_password');
      await iSeeObscureTextInKey(tester, 'password_text_input');
    });
  });
}
