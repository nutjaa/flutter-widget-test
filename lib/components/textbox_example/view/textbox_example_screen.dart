import 'package:flutter/material.dart';
import 'package:wigget_testing/components/textbox_example/organisms/textbox_example_body.dart';

class TextboxExampleScreen extends StatelessWidget {
  const TextboxExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text example'),
      ),
      backgroundColor: Colors.white,
      body: const TextboxExampleBody(),
    );
  }
}
