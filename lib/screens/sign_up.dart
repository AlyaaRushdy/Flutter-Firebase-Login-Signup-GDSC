import 'package:flutter/material.dart';
import 'package:login_signup_pages/widgets/divider_with_text.dart';
import 'package:login_signup_pages/widgets/label_text.dart';
import 'package:login_signup_pages/widgets/login_signup_button.dart';
import 'package:login_signup_pages/widgets/text_form_field_decoration.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    //First and Last names
                    Row(
                      children: [
                        //first name
                        Expanded(
                          child: Column(
                            children: [
                              const LabelText(text: "First Name"),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: TextFormFieldDecoration(),
                              ),
                            ],
                          ),
                        ),

                        //space
                        const SizedBox(width: 10),

                        //lastname
                        Expanded(
                          child: Column(
                            children: [
                              const LabelText(text: "Last Name"),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: TextFormFieldDecoration(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Space
                    const SizedBox(height: 15.0),

                    //Email
                    const LabelText(text: "Email"),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: TextFormFieldDecoration(),
                    ),

                    // Space
                    const SizedBox(height: 15.0),

                    //Password
                    const LabelText(text: "Password"),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: TextFormFieldDecoration(),
                    ),

                    // Space
                    const SizedBox(height: 15.0),

                    //Password
                    const LabelText(text: "Confirm password"),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: TextFormFieldDecoration(),
                    ),

                    // Space
                    const SizedBox(height: 20.0),

                    //Sign Up Action Button
                    const LoginSignupButton(
                      text: "Sign Up",
                    ),

                    //divider with text
                    const DividerWithText(),

                    TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/google.png",
                        width: 30,
                      ),
                      label: const Text('Sign Up with Google'),
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
      ),
    );
  }
}
