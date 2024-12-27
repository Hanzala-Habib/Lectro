import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lectro/controllers/SignupControllers.dart';

class TextSearchField extends StatelessWidget {
  final String labletext;
  final String hint;
  final IconData icon;
  final TextEditingController Onchange;


  const TextSearchField({super.key, required this.labletext, required this.hint, required this.icon, required this.Onchange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Onchange,
      obscureText: false,
      decoration: InputDecoration(
          fillColor: Colors.white54,
          filled: true,
          hintText:hint,
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(
              borderSide: BorderSide.none
          )

      ),
    );
  }
}
class passwordFeild extends StatelessWidget {
  final String labletext;
  final bool visible;
  final String hint;
  final IconData icon;
  final TextEditingController Onchange;
  const passwordFeild({super.key, required this.labletext, required this.visible, required this.icon, required this.Onchange, required this.hint});

  @override
  Widget build(BuildContext context) {
    SignupControllers controllers=Get.put(SignupControllers());
    return TextField(
      controller: Onchange,
      obscureText: visible,
      decoration: InputDecoration(
          fillColor: Colors.white54,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          hintText:hint,
          prefixIcon: Icon(icon),
        suffixIcon: IconButton(onPressed: controllers.passwordIcon, icon: Icon(
          controllers.visibilityhidden.value ? Icons.visibility_off : Icons.visibility
        ))
      ),
    );
  }
}
