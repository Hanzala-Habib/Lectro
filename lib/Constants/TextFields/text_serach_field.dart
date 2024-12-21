import 'package:flutter/material.dart';

class TextSearchField extends StatelessWidget {
  const TextSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hoverColor: Colors.greenAccent,focusColor: Colors.white,
        border: OutlineInputBorder(),
        labelText: "Search classes"
      ),
    );
  }
}
