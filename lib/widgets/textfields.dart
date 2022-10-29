import 'package:flutter/material.dart';

import '../login_page.dart';

// Textfield properties
class UtilityTextField extends StatelessWidget {
  const UtilityTextField({
    Key? key,
    required this.inputDecoration,
    required this.keyboardType,
    required this.textInputAction,
    required this.obscureText,
  }) : super(key: key);
  final InputDecoration inputDecoration;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: inputDecoration,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: ProjectColors().mineShaft,
      obscureText: obscureText,
    );
  }
}
