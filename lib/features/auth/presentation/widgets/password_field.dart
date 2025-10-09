import 'package:flutter/material.dart';

class CustomPasswordFormFiled extends StatefulWidget {
  CustomPasswordFormFiled({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.validator,
    this.onFieldSubmitted,
  });

  @override
  State<CustomPasswordFormFiled> createState() =>
      _CustomPasswordFormFiledState();

  TextEditingController controller;
  String hintText;
  String labelText;
  final String? Function(String?)? validator;
  final dynamic onFieldSubmitted;
}

class _CustomPasswordFormFiledState extends State<CustomPasswordFormFiled> {
  bool isVisiable = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
      child: TextFormField(
        controller: widget.controller,
        textInputAction: TextInputAction.next,
        onFieldSubmitted:
            widget.onFieldSubmitted ??
            (_) {
              FocusScope.of(
                context,
              ).nextFocus(); // تروح تلقائيًا للـ field اللي بعده
            },
        obscureText: isVisiable,
        validator: widget.validator,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          label: Text(widget.labelText),
          errorMaxLines: 6,
          hintText: widget.hintText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isVisiable = !isVisiable;
              });
            },
            icon: isVisiable
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }
}
