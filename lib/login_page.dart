import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const _LoginProfile(),
              Padding(
                padding: ProjectPaddings().paddingAll,
                child: _UtilityTextField(
                  inputDecoration: ProjectInputDecorations().userNameDecoration,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                ),
              ),
              Padding(
                padding: ProjectPaddings().paddingAll,
                child: _UtilityTextField(
                  inputDecoration: ProjectInputDecorations().passwordDecoration,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  _ForgotPassTextButton(),
                ],
              ),
              Padding(
                padding: ProjectPaddings().buttonPadding,
                child: const _LoginButton(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringItems.dontAccount,
                    style: TextStyle(color: ProjectColors().grey600),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text(StringItems.register))
                ],
              )
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
        padding: ProjectPaddings().paddingVertical,
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
      cursorColor: ProjectColors().mineShaft,
      obscureText: obscureText,
    );
  }
}

// forgot password Button
class _ForgotPassTextButton extends StatelessWidget {
  const _ForgotPassTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        StringItems.forgotPass,
        style: TextStyle(
            color: ProjectColors().endeavour, fontWeight: FontWeight.w600),
      ),
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
}

class ProjectPaddings {
  final paddingAll = const EdgeInsets.all(10);
  final paddingVertical = const EdgeInsets.symmetric(vertical: 50);
  final textPadding = const EdgeInsets.symmetric(horizontal: 40, vertical: 13);
  final contentPadding = const EdgeInsets.all(0.0);
  final buttonPadding = const EdgeInsets.symmetric(vertical: 30);
}

class ProjectColors {
  final concrete = const Color(0xffF2F2F2);
  final mineShaft = const Color(0xff262626);
  final endeavour = const Color(0xff035AA6);
  final black = Colors.black;
  final grey600 = Colors.grey.shade600;
  final grey200 = Colors.grey.shade200;
}

class ProjectBorders {
  final circularBorder = BorderRadius.circular(10.0);
}
