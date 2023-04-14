import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/pin_circle_base.dart';
import 'package:wigget_testing/configs/color.dart';

class PinCircleActive extends StatelessWidget {
  const PinCircleActive({super.key});

  @override
  Widget build(BuildContext context) {
    return const PinCircleBase(
      color: redOrangeColor,
      border: null,
    );
  }
}
