import 'package:flutter/material.dart';

class PasswordTextInput extends StatefulWidget {
  final String? tag;
  final TextEditingController? textEditingController;
  final String? label;
  final Widget? labelWidget;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final Iterable<String>? autofillHints;

  const PasswordTextInput({
    Key? key,
    this.tag,
    this.textEditingController,
    this.label,
    this.labelWidget,
    required this.validator,
    this.onSaved,
    this.onChanged,
    this.autofillHints,
  }) : super(key: key);

  @override
  State<PasswordTextInput> createState() => _PasswordTextInputState();
}

class _PasswordTextInputState extends State<PasswordTextInput> {
  //TextEditingController get _controller => widget.controller;
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.tag != null ? Key(widget.tag!) : null,
      obscureText: hidePassword,
      controller: widget.textEditingController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: widget.label,
        label: widget.labelWidget,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        alignLabelWithHint: true,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.only(left: 14.0, bottom: 20.0, top: 10.0),
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
          borderSide: BorderSide(color: Theme.of(context).hoverColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).errorColor),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: IconButton(
          key: widget.tag != null ? Key('${widget.tag!}_show_password') : null,
          icon: Icon(
            hidePassword ? Icons.visibility : Icons.visibility_off,
            color: const Color(0XFF4DA0AB),
          ),
          onPressed: () {
            setState(() {
              hidePassword = !hidePassword;
            });
          },
        ),
      ),
      validator: widget.validator,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      autofillHints: widget.autofillHints,
    );
  }
}
