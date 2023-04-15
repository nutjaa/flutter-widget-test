import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/pin_circle_active.dart';
import 'package:wigget_testing/components/common/molecules/pin_circle_inactive.dart';

class PinInputProgress extends StatefulWidget {
  final TextEditingController pinCodeController;

  const PinInputProgress({
    Key? key,
    required this.pinCodeController,
  }) : super(key: key);

  @override
  State<PinInputProgress> createState() => _PinInputProgressState();
}

class _PinInputProgressState extends State<PinInputProgress> {
  @override
  void initState() {
    super.initState();
    widget.pinCodeController.addListener(_setState);
  }

  @override
  void dispose() {
    widget.pinCodeController.removeListener(_setState);
    super.dispose();
  }

  void _setState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _pinCircleCheck(context, widget.pinCodeController.text.isNotEmpty),
        _pinCircleCheck(context, widget.pinCodeController.text.length > 1),
        _pinCircleCheck(context, widget.pinCodeController.text.length > 2),
        _pinCircleCheck(context, widget.pinCodeController.text.length > 3),
        _pinCircleCheck(context, widget.pinCodeController.text.length > 4),
        _pinCircleCheck(context, widget.pinCodeController.text.length > 5),
      ],
    );
  }

  Widget _pinCircleCheck(BuildContext context, bool isActive) {
    if (isActive) {
      return const PinCircleActive();
    }
    return const PinCircleInactive();
  }
}
