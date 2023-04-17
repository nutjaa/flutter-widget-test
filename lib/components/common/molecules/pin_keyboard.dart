import 'package:flutter/material.dart';
import 'package:wigget_testing/configs/color.dart';

class PinKeyboard extends StatelessWidget {
  final Function(String) onNumberPressed;
  final Function() onBackspacePressed;
  final Function()? onUtilityPressed;
  final String? utilityButtonName;
  final double _maxButtonSize = 24 * 3;

  const PinKeyboard({
    Key? key,
    required this.onNumberPressed,
    required this.onBackspacePressed,
    this.onUtilityPressed,
    this.utilityButtonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _keyboardButton(context, "1"),
              _keyboardPaddingHorizontal(_keyboardButton(context, "2")),
              _keyboardButton(context, "3"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _keyboardButton(context, "4"),
              _keyboardPaddingHorizontal(_keyboardButton(context, "5")),
              _keyboardButton(context, "6")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _keyboardButton(context, "7"),
              _keyboardPaddingHorizontal(_keyboardButton(context, "8")),
              _keyboardButton(context, "9"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              utilityButtonName == null ? _emptykeyboardButton(context) : _keyboardUtilityButton(context),
              _keyboardPaddingHorizontal(_keyboardButton(context, "0")),
              _keyboardBackSpaceButton(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _keyboardPaddingHorizontal(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: child,
    );
  }

  double _getPossibleButtonSize(BuildContext context) {
    double possibleSize = (MediaQuery.of(context).size.width - (24 * 3) - (16 * 2)) / 3;
    if (possibleSize > _maxButtonSize) {
      possibleSize = _maxButtonSize;
    }
    return possibleSize;
  }

  Widget _keyboardButton(BuildContext context, String number) {
    final possibleSize = _getPossibleButtonSize(context);

    return OutlinedButton(
      key: Key("common_number_keyboard_$number"),
      onPressed: () {
        onNumberPressed(number);
      },
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        side: const BorderSide(
          color: redOrangeColor,
          style: BorderStyle.solid,
        ),
        fixedSize: Size(possibleSize, possibleSize),
        minimumSize: Size(possibleSize, possibleSize),
        maximumSize: Size(_maxButtonSize, _maxButtonSize),
        foregroundColor: greyQuartzColor,
      ),
      child: Text(number),
    );
  }

  Widget _keyboardBackSpaceButton(BuildContext context) {
    final possibleSize = _getPossibleButtonSize(context);

    return TextButton(
      key: const Key("common_number_keyboard_backspace"),
      onPressed: () {
        onBackspacePressed();
      },
      style: TextButton.styleFrom(
        shape: const CircleBorder(),
        fixedSize: Size(possibleSize, possibleSize),
        minimumSize: Size(possibleSize, possibleSize),
        maximumSize: Size(_maxButtonSize, _maxButtonSize),
        foregroundColor: greyQuartzColor,
      ),
      child: const Center(
        child: Icon(
          Icons.backspace,
          color: blackMineShaftColor,
        ),
      ),
    );
  }

  Widget _emptykeyboardButton(BuildContext context) {
    final possibleSize = _getPossibleButtonSize(context);

    return TextButton(
      onPressed: null,
      style: OutlinedButton.styleFrom(
        fixedSize: Size(possibleSize, possibleSize),
        minimumSize: Size(possibleSize, possibleSize),
        maximumSize: Size(_maxButtonSize, _maxButtonSize),
      ),
      child: const Text(" "),
    );
  }

  Widget _keyboardUtilityButton(BuildContext context) {
    final possibleSize = _getPossibleButtonSize(context);

    return TextButton(
      key: const Key("common_number_keyboard_utility"),
      onPressed: () => onUtilityPressed!() ?? () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: const CircleBorder(),
        fixedSize: Size(possibleSize, possibleSize),
        minimumSize: Size(possibleSize, possibleSize),
        maximumSize: Size(_maxButtonSize, _maxButtonSize),
        foregroundColor: blackMineShaftColor,
      ),
      child: Center(
        child: Text(
          utilityButtonName!,
        ),
      ),
    );
  }
}
