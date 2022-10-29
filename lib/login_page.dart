import 'package:flutter/material.dart';
import 'package:login_page/languages/string_items.dart';
import 'package:login_page/register_page.dart';
import 'package:login_page/widgets/input_decorations.dart';
import 'package:login_page/widgets/special_button.dart';
import 'package:login_page/widgets/textfields.dart';

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
                child: UtilityTextField(
                  inputDecoration: ProjectInputDecorations().userNameDecoration,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                ),
              ),
              Padding(
                padding: ProjectPaddings().paddingAll,
                child: UtilityTextField(
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
                child: const SpecialButton(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringItems.dontAccount,
                    style: TextStyle(color: ProjectColors().grey600),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const RegisterPageView(),
                          ),
                        );
                      },
                      child: const Text(StringItems.register))
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
