import 'package:flutter/material.dart';
import 'package:login_page/widgets/input_decorations.dart';
import 'package:login_page/widgets/special_button.dart';
import 'package:login_page/widgets/textfields.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(
                'Sign Up',
                style: Theme.of(context).textTheme.headline4,
              ),
              // --------- User Name ---------
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: UtilityTextField(
                  inputDecoration: ProjectInputDecorations().userNameDecoration,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                ),
              ),
              // --------- E Mail ---------
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: UtilityTextField(
                  inputDecoration: ProjectInputDecorations().emailDecoration,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: UtilityTextField(
                  inputDecoration: ProjectInputDecorations().passwordDecoration,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: UtilityTextField(
                  inputDecoration: ProjectInputDecorations().passwordDecoration,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
              ),
              const SpecialButton(),
            ],
          );
        },
      ),
    );
  }
}
