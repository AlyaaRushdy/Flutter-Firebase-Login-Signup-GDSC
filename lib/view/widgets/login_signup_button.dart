import 'package:flutter/material.dart';

class LoginSignupButton extends StatelessWidget {
  const LoginSignupButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(45.0),
        backgroundColor: Colors.green,
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
