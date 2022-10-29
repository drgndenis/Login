import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../languages/string_items.dart';
import '../login_page.dart';

class ProjectInputDecorations {

  final userNameDecoration = InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ProjectColors().black, width: 1.5),
      borderRadius: ProjectBorders().circularBorder,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ProjectColors().grey200, width: 2),
      borderRadius: ProjectBorders().circularBorder,
    ),
    contentPadding: ProjectPaddings().contentPadding,
    labelText: StringItems.userName,
    hintText: StringItems.userOrMail,
    prefixIcon: Icon(
      Iconsax.user,
      color: ProjectColors().black,
    ),
  );

  final passwordDecoration = InputDecoration(
    // Cevresindeki alanin rengini degistirip border verme
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ProjectColors().black, width: 1.5),
      borderRadius: ProjectBorders().circularBorder,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ProjectColors().grey200, width: 2),
      borderRadius: ProjectBorders().circularBorder,
    ),
    contentPadding: ProjectPaddings().contentPadding,
    labelText: StringItems.password,
    hintText: StringItems.password,
    prefixIcon: Icon(
      Iconsax.key,
      color: ProjectColors().black,
    ),
  );

  final emailDecoration = InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ProjectColors().black, width: 1.5),
      borderRadius: ProjectBorders().circularBorder,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ProjectColors().grey200, width: 2),
      borderRadius: ProjectBorders().circularBorder,
    ),
    contentPadding: ProjectPaddings().contentPadding,
    hintText: StringItems.enterMail,
  );
}
