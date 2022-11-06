import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:login_page/login_page.dart';
import 'package:login_page/widgets/colors.dart';
import 'package:login_page/widgets/paddings.dart';
import 'package:login_page/widgets/special_button.dart';
import 'package:login_page/widgets/text_fields.dart';

import 'languages/string_items.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringItems.signUp),
      ),
      backgroundColor: ProjectColors().concrete,
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          double height = 25.0;
          return Column(
            children: [
              SizedBox(
                height: height,
              ),
              // --------- User name TextField ---------
              Padding(
                padding: ProjectPaddings().paddingAll +
                    ProjectPaddings().signUpPadding,
                child: UtilityTextField(
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  hintText: StringItems.userName,
                  prefixIcon: Icon(
                    Iconsax.user,
                    color: ProjectColors().black,
                  ),
                ),
              ),

              // --------- E-Mail TextField ---------
              Padding(
                padding: ProjectPaddings().paddingAll +
                    ProjectPaddings().signUpPadding,
                child: UtilityTextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  hintText: StringItems.mail,
                  prefixIcon: Icon(
                    Icons.mail_outlined,
                    color: ProjectColors().black,
                  ),
                ),
              ),

              // --------- Password TextField ---------
              Padding(
                padding: ProjectPaddings().paddingAll +
                    ProjectPaddings().signUpPadding,
                child: UtilityTextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  hintText: StringItems.password,
                  prefixIcon: Icon(
                    Iconsax.key,
                    color: ProjectColors().black,
                  ),
                ),
              ),

              // --------- Confirm Password TextField ---------
              Padding(
                padding: ProjectPaddings().paddingAll +
                    ProjectPaddings().signUpPadding,
                child: UtilityTextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  hintText: StringItems.confirmPassword,
                  prefixIcon: Icon(
                    Iconsax.key,
                    color: ProjectColors().black,
                  ),
                ),
              ),

              // --------- Login Button ---------
              Padding(
                padding: ProjectPaddings().buttonPadding,
                child: const SpecialButton(textData: StringItems.signUp),
              ),

              // --------- Text and Login Button ---------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringItems.haveAccount,
                    style: TextStyle(color: ProjectColors().grey600),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const LoginPageView()));
                      },
                      child: const Text(StringItems.login))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
