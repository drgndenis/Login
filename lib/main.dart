import 'package:flutter/material.dart';
import 'package:login_page/languages/string_items.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringItems.materialAppTitle,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.transparent,
            iconColor: ProjectColors().mineShaft,
            labelStyle: TextStyle(color: ProjectColors().mineShaft),
            hintStyle: const TextStyle(
              color: Colors.grey,
            )),
      ),
      home: const LoginPageView(),
    );
  }
}
