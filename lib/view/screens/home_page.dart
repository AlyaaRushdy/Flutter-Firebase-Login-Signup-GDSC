import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:login_signup_pages/view/widgets/primary_button.dart';
import 'package:login_signup_pages/view_model/auth_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Welcome!! ${cubit.name}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: PrimaryButton(
              text: "Sign Out",
              onPressed: () {
                log(cubit.state.toString());
                cubit.signOut(context);
                log(cubit.state.toString());
              },
            ),
          ),
        ],
      ),
    );
  }
}
