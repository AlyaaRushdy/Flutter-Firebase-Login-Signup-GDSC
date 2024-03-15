import 'package:flutter/material.dart';
import 'package:login_signup_pages/view/widgets/divider_with_text.dart';
import 'package:login_signup_pages/view/widgets/label_text.dart';
import 'package:login_signup_pages/view/widgets/login_signup_button.dart';
import 'package:login_signup_pages/view/widgets/text_form_field_decoration.dart';
import 'package:login_signup_pages/view_model/auth_cubit.dart';

import '../widgets/google_button.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
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
                key: _formKey,
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
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "it must not be empty";
                                  }
                                  return null;
                                },
                                controller: firstNameController,
                                onSaved: (String? value) {},
                                keyboardType: TextInputType.name,
                                decoration: textFormFieldDecoration(),
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
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "it must not be empty";
                                  }
                                  return null;
                                },
                                controller: lastNameController,
                                onSaved: (String? value) {},
                                keyboardType: TextInputType.name,
                                decoration: textFormFieldDecoration(),
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
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "it must not be empty";
                        }
                        return null;
                      },
                      controller: emailController,
                      onSaved: (String? value) {},
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
                    const SizedBox(height: 15.0),

                    //Password
                    const LabelText(text: "Confirm password"),
                    TextFormField(
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "it must not be empty";
                        } else if (passwordConfirmController.text !=
                            passwordController) {
                          return "doesn't match password";
                        }
                        return null;
                      },
                      onSaved: (String? value) {},
                      controller: passwordConfirmController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: textFormFieldDecoration(),
                    ),

                    // Space
                    const SizedBox(height: 20.0),

                    //Sign Up Action Button
                    LoginSignupButton(
                      text: "Sign Up",
                      onPressed: () {
                        _formKey.currentState!.save();
                        if (_formKey.currentState!.validate()) {
                          cubit.email = emailController.text;
                          cubit.password = passwordController.text;
                          cubit.name =
                              "${firstNameController.text} ${lastNameController.text}";

                          cubit.registerWithEmailAndPassword(context);
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
      ),
    );
  }
}
