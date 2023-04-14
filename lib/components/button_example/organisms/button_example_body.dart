import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/primary_button.dart';

class ButtonExampleBody extends StatelessWidget {
  const ButtonExampleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Text('Basic button'),
            const SizedBox(height: 16),
            PrimaryButton(onPressed: () {}, text: 'button1'),
            const SizedBox(height: 16),
            const Text('Loading button'),
            const SizedBox(height: 16),
            PrimaryButton(onPressed: () {}, text: 'button2', isProcessing: true),
          ],
        ),
      ),
    );
  }
}
