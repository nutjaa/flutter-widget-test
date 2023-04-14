import 'package:flutter/material.dart';
import 'package:wigget_testing/components/common/molecules/pin_input_body.dart';
import 'package:wigget_testing/components/common/validator/pin_validator.dart';

class CombineExampleBody extends StatefulWidget {
  const CombineExampleBody({super.key});

  @override
  State<CombineExampleBody> createState() => _CombineExampleBodyState();
}

class _CombineExampleBodyState extends State<CombineExampleBody> {
  late TextEditingController pinCodeController;
  late PinValidator pinValidator;
  String error = '';

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
    pinValidator = PinValidator();
  }

  @override
  void dispose() {
    pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PinInputBody(
      mainImage: Container(width: double.infinity),
      title: 'Pin code demo',
      pinCodeController: pinCodeController,
      onCompleted: (value) {
        if (!pinValidator.isValid(value)) {
          setState(() {
            error = 'invalid format';
          });

          pinCodeController.clear();
        } else {
          setState(() {
            error = 'success';
          });
        }
      },
      errorContent: Text(error),
    );
  }
}
