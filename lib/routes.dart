import 'package:flutter/material.dart';
import 'package:wigget_testing/components/button_example/view/button_example_screen.dart';
import 'package:wigget_testing/components/combine_example/view/combine_example_screen.dart';
import 'package:wigget_testing/components/landing/view/landing_screen.dart';
import 'package:wigget_testing/components/textbox_example/view/textbox_example_screen.dart';

Map<String, Widget Function(BuildContext)> routes() {
  return {
    '/': (_) => const LandingScreen(),
    '/textbox-example': (_) => const TextboxExampleScreen(),
    '/button-example': (_) => const ButtonExampleScreen(),
    '/combine-example': (_) => const CombineExampleScreen(),
  };
}
