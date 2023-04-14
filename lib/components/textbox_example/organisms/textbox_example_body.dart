import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/additional_text_input.dart';
import 'package:wigget_testing/components/common/molecules/default_text_input.dart';
import 'package:wigget_testing/components/common/molecules/password_text_input.dart';

class TextboxExampleBody extends StatelessWidget {
  const TextboxExampleBody({super.key});

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
            const Text('Basic textbox'),
            const SizedBox(height: 16),
            const DefaultTextInput(
              label: 'Label',
            ),
            const SizedBox(height: 16),
            const Text('Password textbox'),
            const SizedBox(height: 16),
            PasswordTextInput(
              label: 'Label',
              validator: (value) {
                return null;
              },
            ),
            const SizedBox(height: 16),
            const Text('Additional textbox'),
            const SizedBox(height: 16),
            const AdditionalTextInput()
          ],
        ),
      ),
    );
  }
}
