import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/pin_circle_base.dart';
import 'package:wigget_testing/configs/color.dart';

class PinCircleInactive extends StatelessWidget {
  const PinCircleInactive({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCircleBase(
      color: whiteColor,
      border: Border.all(
        color: const Color(0xFF707070),
        width: 1,
      ),
    );
  }
}
