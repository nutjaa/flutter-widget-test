import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:wigget_testing/components/common/molecules/loading_bright_widget.dart';
import 'package:wigget_testing/components/common/molecules/primary_button.dart';
import 'steps/step.dart';

void main() {
  group('''Primary button''', () {
    testWidgets('''As user, i can see primary button with text''', (tester) async {
      await theWidgetIsRunning(tester, PrimaryButton(onPressed: () {}, text: 'THIS IS BUTTON', tag: 'primary_button'));
      await iSeeKey(tester, 'primary_button');
      await iSeeText(tester, 'THIS IS BUTTON', 1);
      await iDontSeeWidgetType(tester, LoadingBrightWidget);
    });

    testWidgets('''As user, i can see primary button with loading icon''', (tester) async {
      await theWidgetIsRunning(tester, PrimaryButton(onPressed: () {}, text: 'THIS IS BUTTON', tag: 'primary_button', isProcessing: true));
      await iSeeKey(tester, 'primary_button');
      await iSeeWidgetType(tester, LoadingBrightWidget, 1);
    });

    testWidgets('''As user, i tap button and trigger onPressed''', (tester) async {
      final completer = Completer<void>();
      // ignore: avoid_print
      await theWidgetIsRunning(tester, PrimaryButton(onPressed: completer.complete, text: 'THIS IS BUTTON', tag: 'primary_button'));
      await iTapKey(tester, 'primary_button');
      await iWait(tester);
      expect(completer.isCompleted, isTrue);
    });
  });
}
