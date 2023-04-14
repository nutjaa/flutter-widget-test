import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/pin_input_progress.dart';
import 'package:wigget_testing/components/common/molecules/pin_keyboard.dart';

class PinInputBody extends StatefulWidget {
  final Widget mainImage;
  final String? subtitle;
  final String? utilityButtonName;
  final String title;
  final TextEditingController pinCodeController;
  final Function(String)? onCompleted;
  final Function(String)? onChanged;
  final Function()? onUtilityPressed;
  final Widget errorContent;

  const PinInputBody({
    Key? key,
    required this.mainImage,
    this.subtitle,
    this.utilityButtonName,
    required this.title,
    required this.pinCodeController,
    required this.errorContent,
    this.onCompleted,
    this.onChanged,
    this.onUtilityPressed,
  }) : super(key: key);

  @override
  State<PinInputBody> createState() => _PinInputBodyState();
}

class _PinInputBodyState extends State<PinInputBody> {
  double keyboardHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height - 55 - keyboardHeight - (16 * 3.5)),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            reverse: true,
            child: Column(
              children: [
                const SizedBox(height: 16),
                widget.mainImage,
                const SizedBox(height: 16),
                widget.subtitle != null ? Text(widget.subtitle!) : const SizedBox(),
                const SizedBox(height: 4),
                Text(widget.title, textAlign: TextAlign.center),
                widget.subtitle != null ? const SizedBox(height: 16) : const SizedBox(),
                const SizedBox(height: 16),
                PinInputProgress(
                  pinCodeController: widget.pinCodeController,
                ),
                const SizedBox(height: 8),
                widget.errorContent,
              ],
            ),
          ),
        ),
        PinKeyboard(
          key: const Key('pin_input_keyboard'),
          onNumberPressed: (value) {
            if (widget.pinCodeController.text.length < 6) {
              widget.pinCodeController.text += value;

              if (widget.onChanged != null) {
                widget.onChanged!(widget.pinCodeController.text);
              }

              if (widget.pinCodeController.text.length == 6 && widget.onCompleted != null) {
                widget.onCompleted!(widget.pinCodeController.text);
              }
            }
          },
          onBackspacePressed: () {
            if (widget.pinCodeController.text.isNotEmpty) {
              widget.pinCodeController.text = widget.pinCodeController.text.substring(0, widget.pinCodeController.text.length - 1);

              if (widget.onChanged != null) {
                widget.onChanged!(widget.pinCodeController.text);
              }
            }
          },
          utilityButtonName: widget.utilityButtonName,
          onUtilityPressed: widget.onUtilityPressed,
        ),
      ],
    );
  }
}
