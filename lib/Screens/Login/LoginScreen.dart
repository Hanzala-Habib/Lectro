import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lectro/Screens/Signup/conditional_sign_up.dart';
import 'package:lectro/Widgets/Buttons/buttons.dart';
import 'package:lectro/Widgets/TextFields/text_serach_field.dart';
import 'package:lectro/controllers/SignupControllers.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllers controllers = Get.put(SignupControllers());
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "W E L C O M E   B A C K",
              style: TextStyle(
                  color: Colors.white,
                fontSize: 22,
                fontWeight:FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Sign In to Continue....",
            style: TextStyle(color: Colors.white),),
            SizedBox(
              height: 10,
            ),
            TextSearchField(
                labletext: "Email",
                hint: "Enter your Email",
                icon: Icons.email,
                Onchange: controllers.email),
            SizedBox(
              height: 10,
            ),
            passwordFeild(
                labletext: "password",
                visible: controllers.visibilityhidden.value,
                icon: Icons.password,
                Onchange: controllers.password,
                hint: "Enter your valid Email"),
            SizedBox(
              height: 10,
            ),
            Buttons(BtnName: "Login"),
            SizedBox(height: 15,),
            RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account?"
                    ),
                    TextSpan(
                        text: " Sign Up",
                    recognizer: TapGestureRecognizer()..onTap=(){
                      Get.to(SignUpScreen());
                    },
                    style: TextStyle(color:Colors.amberAccent,
                    fontSize: 15))
                  ]
                ))
          ],
        ),
      ),
    ));
  }
}
