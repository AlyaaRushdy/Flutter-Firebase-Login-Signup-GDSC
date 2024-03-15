import 'package:flutter/material.dart';
import 'package:login_signup_pages/view/widgets/google_button.dart';
import 'package:login_signup_pages/view/widgets/text_form_field_decoration.dart';
import 'package:login_signup_pages/view/widgets/label_text.dart';
import 'package:login_signup_pages/view_model/auth_cubit.dart';
import '../widgets/divider_with_text.dart';
import '../widgets/primary_button.dart';

// ignore: must_be_immutable
class LogIn extends StatelessWidget {
  LogIn({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);

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
              key: _formKey,
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
                    controller: emailController,
                    onSaved: (value) {},
                    keyboardType: TextInputType.emailAddress,
                    decoration: textFormFieldDecoration(),
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
                    controller: passwordController,
                    onSaved: (String? value) {},
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: textFormFieldDecoration(),
                  ),

                  // Space
                  const SizedBox(height: 20.0),

                  //Log In Action Button
                  PrimaryButton(
                    text: "Log In",
                    onPressed: () {
                      _formKey.currentState!.save();
                      if (_formKey.currentState!.validate()) {
                        cubit.email = emailController.text;
                        cubit.password = passwordController.text;
                        cubit.signInWithEmailAndPassword(context);
                        emailController.clear();
                        passwordController.clear();
                      }
                    },
                  ),

                  //divider with text
                  const DividerWithText(),

                  GoogleButton(formKey: _formKey, cubit: cubit),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
