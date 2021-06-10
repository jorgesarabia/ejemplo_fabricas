import 'package:flutter/material.dart';

class AppTextForm extends StatelessWidget {
  const AppTextForm({
    Key? key,
    this.hintText,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey[800]),
        hintText: hintText,
        fillColor: Colors.white70,
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
