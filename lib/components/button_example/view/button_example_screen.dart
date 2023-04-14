import 'package:flutter/material.dart';
import 'package:wigget_testing/components/button_example/organisms/button_example_body.dart';

class ButtonExampleScreen extends StatelessWidget {
  const ButtonExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button example'),
      ),
      backgroundColor: Colors.white,
      body: const ButtonExampleBody(),
    );
  }
}
