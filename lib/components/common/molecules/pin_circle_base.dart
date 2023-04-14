import 'package:flutter/material.dart';

class PinCircleBase extends StatelessWidget {
  final Color? color;
  final BoxBorder? border;

  const PinCircleBase({super.key, required this.color, required this.border});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: border,
      ),
      width: 16,
      height: 16,
      duration: const Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
    );
  }
}
