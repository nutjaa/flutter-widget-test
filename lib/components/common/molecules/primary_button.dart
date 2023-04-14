import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/condition.dart';
import 'package:wigget_testing/components/common/molecules/loading_bright_widget.dart';
import 'package:wigget_testing/configs/color.dart';
import 'package:wigget_testing/configs/constant.dart';

class PrimaryButton extends StatelessWidget {
  final String? tag;
  final void Function()? onPressed;
  final String text;
  final bool? isProcessing;
  final EdgeInsetsGeometry? padding;
  final Widget? trailing;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isProcessing,
    this.padding,
    this.trailing,
    this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget button = Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(
        text,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
        overflow: TextOverflow.clip,
        maxLines: 1,
      )
    ]);

    if ((isProcessing != null && isProcessing!) || trailing != null) {
      button = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Condition(condition: isProcessing != null && isProcessing!, builder: (_) => const LoadingBrightWidget()),
          Condition(condition: isProcessing != null && isProcessing!, builder: (_) => const SizedBox(width: spaceBase)),
          button,
          Condition(condition: trailing != null, builder: (_) => trailing!),
        ],
      );
    }

    return ElevatedButton(
      key: tag != null ? Key(tag!) : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: blueCelloColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: padding ?? const EdgeInsets.only(top: spaceBase * 1.5, bottom: spaceBase * 1.5),
      ),
      onPressed: onPressed,
      child: button,
    );
  }
}
