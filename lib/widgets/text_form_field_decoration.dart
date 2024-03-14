import 'package:flutter/material.dart';

InputDecoration TextFormFieldDecoration() {
  return const InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.green,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
  );
}
