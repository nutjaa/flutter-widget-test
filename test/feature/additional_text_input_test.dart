import 'package:flutter_test/flutter_test.dart';
import 'package:wigget_testing/components/common/molecules/additional_text_input.dart';
import 'steps/step.dart';

void main() {
  group('''Additional text input''', () {
    testWidgets('''As user, i can see additional text input with label''', (tester) async {
      await theWidgetIsRunning(tester, const AdditionalTextInput());
      await iSeeKey(tester, 'addotional_text_input');
      await iSeeText(tester, 'Additional', 1);
    }, tags: [
      'lol'
    ]);

    testWidgets('''As user, i can see error message when enter less than 10 characters''', (tester) async {
      await theWidgetIsRunning(tester, const AdditionalTextInput());
      await iEnterTextInKey(tester, '12345', 'addotional_text_input_tag');
      await iSeeText(tester, 'Please provide at least 10 charecters.', 1);
    });

    testWidgets('''As user, i should not see error message when enter more than 10 characters''', (tester) async {
      await theWidgetIsRunning(tester, const AdditionalTextInput());
      await iEnterTextInKey(tester, '1234567890', 'addotional_text_input_tag');
      await iDontSeeText(tester, 'Please provide at least 10 charecters.');
    });

    testWidgets('''As user, i should not see error message when widget init''', (tester) async {
      await theWidgetIsRunning(tester, const AdditionalTextInput());
      await iDontSeeText(tester, 'Please provide at least 10 charecters.');
    });
  });
}
