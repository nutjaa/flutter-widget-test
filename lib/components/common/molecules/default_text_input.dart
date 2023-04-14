import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wigget_testing/configs/color.dart';

class DefaultTextInput extends StatelessWidget {
  final String? tag;
  final String? label;
  final Widget? labelWidget;
  final int minLines;
  final int maxLines;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final Iterable<String>? autofillHints;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final bool readOnly;
  final AutovalidateMode? autovalidateMode;
  final String? hintText;

  const DefaultTextInput({
    Key? key,
    this.tag,
    this.label,
    this.labelWidget,
    this.minLines = 1,
    this.maxLines = 1,
    this.textEditingController,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.inputFormatters,
    this.enabled = true,
    this.autofillHints,
    this.contentPadding,
    this.textInputType,
    this.focusNode,
    this.textInputAction,
    this.autofocus = false,
    this.readOnly = false,
    this.hintText,
    this.autovalidateMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      key: tag != null ? Key(tag!) : null,
      autocorrect: true,
      minLines: minLines,
      maxLines: maxLines,
      inputFormatters: inputFormatters,
      controller: textEditingController,
      enabled: enabled,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      autofocus: autofocus,
      readOnly: readOnly,
      decoration: InputDecoration(
        filled: true,
        fillColor: enabled ? Colors.white : Colors.grey[100],
        label: labelWidget,
        labelText: label,
        labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: greyBoulderColor),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        alignLabelWithHint: true,
        border: InputBorder.none,
        contentPadding: contentPadding ?? const EdgeInsets.only(left: 14.0, bottom: 20.0, top: 10.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0XFFCBCBCB)),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0XFFCBCBCB)),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).errorColor),
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).disabledColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).errorColor),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
      ),
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      autofillHints: autofillHints,
    );
  }
}
