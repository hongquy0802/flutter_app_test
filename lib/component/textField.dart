import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String labelText;
  String hintText;
  bool isPassword;

  CustomTextField(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.isPassword}) {
    labelText = labelText;
    hintText = hintText;
    isPassword = isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: const OutlineInputBorder()),
      obscureText: isPassword,
    );
  }
}
