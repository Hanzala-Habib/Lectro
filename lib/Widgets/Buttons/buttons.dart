import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  final String BtnName;
  const Buttons({super.key, required this.BtnName});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      width: 500,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan,

          ),
          onPressed: (){},
          child:Text(BtnName,style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),) ),
    );
  }
}
