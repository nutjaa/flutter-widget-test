import 'package:flutter_test/flutter_test.dart';
import 'package:wigget_testing/components/common/molecules/default_text_input.dart';
import 'steps/step.dart';

void main() {
  group('''Feature name''', () {
    testWidgets('''Test Description''', (tester) async {
      // Load widget into screen
      await theWidgetIsRunning(tester, const DefaultTextInput(label: 'Label', tag: 'default_text_input'));
      // Add step to test
      await iSeeText(tester, 'Label', 1);
    });
  });
}
