import 'package:flutter/material.dart';

class PinInputError extends StatelessWidget {
  final String errorMessage1;
  final String? errorMessage2;

  const PinInputError({
    Key? key,
    required this.errorMessage1,
    this.errorMessage2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(errorMessage1, textAlign: TextAlign.center),
        errorMessage2 != null ? Text(errorMessage2!, textAlign: TextAlign.center) : const SizedBox(),
      ],
    );
  }
}
