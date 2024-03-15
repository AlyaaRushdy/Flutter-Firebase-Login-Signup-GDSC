import 'package:flutter/material.dart';
import 'package:login_signup_pages/view_model/auth_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      body: Center(
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
    );
  }
}
