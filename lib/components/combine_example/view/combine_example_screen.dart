import 'package:flutter/material.dart';
import 'package:wigget_testing/components/combine_example/organisms/combine_example_body.dart';

class CombineExampleScreen extends StatelessWidget {
  const CombineExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('combine_example_screen'),
      appBar: AppBar(
        title: const Text('Combine example'),
      ),
      backgroundColor: Colors.white,
      body: const CombineExampleBody(),
    );
  }
}
