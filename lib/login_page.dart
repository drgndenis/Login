import 'package:flutter/material.dart';
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
      backgroundColor: ProjectColors().concrete,
      appBar: AppBar(
        title: const Text(StringItems.appBarTitle),
        backgroundColor: ProjectColors().dullLavender,
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
                  ),
                ),
              ),
              Padding(
                padding: ProjectPaddings().paddingAll,
                child: const Card(
                  child: _UtilityTextField(
                    inputDecoration: ProjectInputDecorations.passwordDecoration,
                    keyboardType: TextInputType.number,
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

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ProjectColors().dullLavender,
      ),
      onPressed: () {},
      child: Padding(
        padding: ProjectPaddings().paddingSymetric,
        child: Text(
          StringItems.loginButton,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: ProjectColors().concrete),
        ),
      ),
    );
  }
}

class _LoginProfile extends StatelessWidget {
  const _LoginProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: ProjectPaddings().paddingOnly,
        child: Card(
            shape: const CircleBorder(),
            child: Padding(
              padding: ProjectPaddings().paddingAllSpecial,
              child: const Icon(Icons.person, size: 72),
            )),
      ),
    );
  }
}

class _UtilityTextField extends StatelessWidget {
  const _UtilityTextField({
    Key? key,
    required this.inputDecoration,
    required this.keyboardType,
  }) : super(key: key);
  final InputDecoration inputDecoration;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: inputDecoration,
      keyboardType: keyboardType,
    );
  }
}

class ProjectInputDecorations {
  static const userNameDecoration = InputDecoration(
      hintText: StringItems.userName, prefixIcon: Icon(Icons.person_add));

  static const passwordDecoration = InputDecoration(
      hintText: StringItems.password,
      prefixIcon: Icon(Icons.password_outlined));
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
  final dullLavender = const Color(0xff88A3E2);
}
