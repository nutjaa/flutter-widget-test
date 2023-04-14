import 'package:flutter_test/flutter_test.dart';
import 'package:wigget_testing/components/common/molecules/default_text_input.dart';
import 'steps/step.dart';

void main() {
  group('''Default text input''', () {
    testWidgets('''As user, i can see default text input with label''', (tester) async {
      await theWidgetIsRunning(tester, const DefaultTextInput(label: 'Label', tag: 'default_text_input'));
      await iSeeKey(tester, 'default_text_input');
      await iSeeText(tester, 'Label', 1);
      await iEnterTextInKey(tester, 'Sample', 'default_text_input');
      await iSeeText(tester, 'Sample', 1);
      await iSeeText(tester, 'Label', 1);
    });
  });
}
