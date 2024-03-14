import 'package:flutter/material.dart';
import 'package:login_signup_pages/view/widgets/text_form_field_decoration.dart';
import 'package:login_signup_pages/view/widgets/label_text.dart';
import '../widgets/divider_with_text.dart';
import '../widgets/login_signup_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Form
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            alignment: Alignment.center,
            child: Form(
              child: Column(
                children: [
                  //Email
                  const LabelText(text: "Email"),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "it must not be empty";
                      }
                      return null;
                    },
                    onSaved: (String? value) {},
                    keyboardType: TextInputType.emailAddress,
                    decoration: TextFormFieldDecoration(),
                  ),

                  // Space
                  const SizedBox(height: 15.0),

                  //Password
                  const LabelText(text: "Password"),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "it must not be empty";
                      }
                      return null;
                    },
                    onSaved: (String? value) {},
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: TextFormFieldDecoration(),
                  ),

                  // Space
                  const SizedBox(height: 20.0),

                  //Log In Action Button
                  const LoginSignupButton(text: "Log In"),

                  //divider with text
                  const DividerWithText(),

                  TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/google.png",
                      width: 30,
                    ),
                    label: const Text('Login with Google'),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
