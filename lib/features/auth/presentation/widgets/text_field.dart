import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.type,
    required this.validator, // Corrected attribute name
    required this.onFieldSubmitted,
  });

  final TextEditingController controller;
  final TextInputType type;
  final String labelText;
  final String? Function(String?)?
  validator; // Corrected type for validation function
  final Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        keyboardType: type,
        validator: validator, // Assigning the provided validation function
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          label: Text(labelText),
          errorMaxLines: 3,
        ),
      ),
    );
  }
}
