import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page/languages/string_items.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  FocusNode focusNodeTextField = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().pampas,
      appBar: AppBar(
        title: const Text(StringItems.appBarTitle),
        backgroundColor: ProjectColors().bone,
        foregroundColor: ProjectColors().blueCharcoal,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const _LoginProfile(),
              Padding(
                padding: ProjectPaddings().paddingAll,
                child: const Card(
                  child: _UtilityTextField(
                    inputDecoration: ProjectInputDecorations.userNameDecoration,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    obscureText: false,
                  ),
                ),
              ),
              Padding(
                padding: ProjectPaddings().paddingAll,
                child: const Card(
                  child: _UtilityTextField(
                    inputDecoration: ProjectInputDecorations.passwordDecoration,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                  ),
                ),
              ),
              const _LoginButton()
            ],
          );
        },
      ),
    );
  }
}

// Circle profile photo
class _LoginProfile extends StatelessWidget {
  const _LoginProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: ProjectPaddings().paddingOnly,
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(StringItems.loginProfile), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}

// Textfield properties
class _UtilityTextField extends StatelessWidget {
  const _UtilityTextField({
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
      cursorColor: ProjectColors().concrete,
      obscureText: obscureText,
    );
  }
}

// Elevated Login button
class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ProjectColors().softAmber,
      ),
      onPressed: () {},
      child: Padding(
        padding: ProjectPaddings().paddingSymetric,
        child: Text(
          StringItems.loginButton,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: ProjectColors().blueCharcoal),
        ),
      ),
    );
  }
}

class ProjectInputDecorations {
  static const userNameDecoration = InputDecoration(
      hintText: StringItems.userName, prefixIcon: Icon(Icons.person_add));

  static const passwordDecoration = InputDecoration(
    hintText: StringItems.password,
    prefixIcon: Icon(Icons.password_outlined),
  );
}

class ProjectPaddings {
  final paddingAll = const EdgeInsets.all(10);
  final paddingAllSpecial = const EdgeInsets.all(25.0);
  final paddingOnly = const EdgeInsets.only(top: 25);
  final paddingSymetric =
      const EdgeInsets.symmetric(horizontal: 25, vertical: 15);
}

class ProjectColors {
  final concrete = const Color(0xffF2F2F2);
  final bone = const Color(0xffE4D9C5);
  final pampas = const Color(0xffEDEAE3);
  final softAmber = const Color(0xffD3C1B3);
  final blueCharcoal = const Color(0xff010A26);
}
