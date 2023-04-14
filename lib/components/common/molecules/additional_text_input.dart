import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/default_text_input.dart';

class AdditionalTextInput extends StatelessWidget {
  const AdditionalTextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextInput(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: const Key('addotional_text_input'),
      tag: 'addotional_text_input_tag',
      label: 'Additional',
      minLines: 3,
      maxLines: 4,
      validator: (value) {
        if (value!.length < 10) {
          return 'Please provide at least 10 charecters.';
        }
        return null;
      },
    );
  }
}
