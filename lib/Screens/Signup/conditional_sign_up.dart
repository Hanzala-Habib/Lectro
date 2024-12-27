import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lectro/Widgets/Buttons/buttons.dart';
import 'package:lectro/controllers/SignupControllers.dart';
import 'package:lottie/lottie.dart';

import '../../Widgets//TextFields/text_serach_field.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});



  @override
  Widget build(BuildContext context) {
    SignupControllers controller=Get.put(SignupControllers());
    return SafeArea(
        child: Scaffold(
          backgroundColor:Colors.lightBlue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Lottie.network('https://lottie.host/c75c69a6-b893-438f-864f-a2f6ae8f9308/g0Jyqhl8qz.json',
                width: 230,
                height: 230,
                fit: BoxFit.contain,
                animate: true,),
              const SizedBox(height: 10,),
              const Text("S I G N U P",style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w800
              ),),
              const SizedBox(height: 10,),
              TextSearchField(
                labletext: 'Name',
                hint: "Entre your Name",
                 icon: Icons.person,
                Onchange: controller.name,
              ),
              const SizedBox(height: 10,),
              TextSearchField(
                labletext: 'Email',
                hint: "Entre a Valid Email...",
                icon: Icons.email,
                Onchange: controller.email,
              ),
              const SizedBox(height: 10,),
              Obx(
                  ()=>passwordFeild(
                    labletext: 'Password',
                    icon: Icons.password,
                    Onchange: controller.password,
                    hint: "Enter your Password",
                    visible: controller.visibilityhidden.value,
                  ),
              ),
              SizedBox(height: 10,),
              DropdownButtonFormField(
                value: controller.selectedRole.value.isEmpty
                    ? null
                    : controller.selectedRole.value,
                  items: controller.roles
                      .map((role) => DropdownMenuItem<String>(
                    value: role,
                    child: Text(role),
                  )).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      controller.setRole(value);
                    }
                  },
              decoration: const InputDecoration(
                fillColor: Colors.white54,
                filled: true,
                labelText: "Role",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                ),
              ),),
              SizedBox(height: 10,),
              Buttons(BtnName: "Sign Up",)


            ],
          ),
        ),
      ),
    ));
  }
}
