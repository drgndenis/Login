import 'package:flutter/material.dart';
import 'package:login_page/widgets/paddings.dart';
import '../login_page.dart';
import 'colors.dart';

// --------- TextField Properties ---------
class UtilityTextField extends StatelessWidget {
  const UtilityTextField({
    Key? key,
    required this.keyboardType,
    required this.textInputAction,
    required this.obscureText,
    this.labelText,
    this.hintText,
    this.prefixIcon,
  }) : super(key: key);
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ProjectColors().black, width: 1.5),
          borderRadius: ProjectBorders().circularBorder,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ProjectColors().grey200, width: 2),
          borderRadius: ProjectBorders().circularBorder,
        ),
        contentPadding: ProjectPaddings().contentPadding,
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: ProjectColors().mineShaft,
      obscureText: obscureText,
    );
  }
}
