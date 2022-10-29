import 'package:flutter/material.dart';
import '../languages/string_items.dart';
import '../login_page.dart';

// Elevated Login button
class SpecialButton extends StatelessWidget {
  const SpecialButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: ProjectColors().mineShaft,
        shape: RoundedRectangleBorder(
            borderRadius: ProjectBorders().circularBorder),
      ),
      child: Padding(
        padding: ProjectPaddings().textPadding,
        child: Text(
          StringItems.loginButton,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: ProjectColors().concrete),
        ),
      ),
    );
  }
}
