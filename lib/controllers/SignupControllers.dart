import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupControllers extends GetxController{
late RxBool visibilityhidden=true.obs;
var selectedRole = ''.obs;
final roles = ['Student', 'Lecturer'];

void setRole(String role) {
  selectedRole.value = role;
}
  TextEditingController name =TextEditingController();
  TextEditingController email =TextEditingController();
  TextEditingController password =TextEditingController();

  void passwordIcon(){
    visibilityhidden.value=!visibilityhidden.value;
  }
}