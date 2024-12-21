

import 'package:flutter/material.dart';



class AvatarCircle extends StatelessWidget {
  final String name_letter;
  const AvatarCircle({super.key, required this.name_letter});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      width: 50,
      child: CircleAvatar(
        backgroundColor:Colors.greenAccent,
        child: Text(name_letter[0]),



      ),
    );
  }
}

