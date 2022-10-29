import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:login_page/languages/string_items.dart';
import 'package:login_page/widgets/colors.dart';
import 'package:login_page/widgets/paddings.dart';
import 'package:login_page/widgets/special_button.dart';
import 'package:login_page/widgets/text_fields.dart';

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
              // --------- Circle Login Profile Image ---------
              const _LoginProfile(),

              // --------- User or Email TextField ---------
              Padding(
                padding: ProjectPaddings().paddingAll,
                child: UtilityTextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  labelText: StringItems.userName,
                  hintText: StringItems.userOrMail,
                  prefixIcon: Icon(
                    Iconsax.user,
                    color: ProjectColors().black,
                  ),
                ),
              ),

              // --------- Password TextField ---------
              Padding(
                padding: ProjectPaddings().paddingAll,
                child: UtilityTextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  labelText: StringItems.password,
                  hintText: StringItems.password,
                  prefixIcon: Icon(
                    Iconsax.key,
                    color: ProjectColors().black,
                  ),
                ),
              ),

              // --------- Forgot Password Button ---------
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  _ForgotPassTextButton(),
                ],
              ),

              // --------- Login Button ---------
              Padding(
                padding: ProjectPaddings().buttonPadding,
                child: const SpecialButton(),
              ),

              // --------- Text and Register Button ---------
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

// --------- Circle Login Profile ---------
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

// --------- Forgot Password Button ---------
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

// --------- Borders ---------
class ProjectBorders {
  final circularBorder = BorderRadius.circular(10.0);
}
