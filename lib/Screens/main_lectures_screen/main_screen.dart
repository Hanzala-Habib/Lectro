import 'package:flutter/material.dart';
import 'package:lectro/Constants/Avatar/Avatar_circle.dart';

import '../../Constants/TextFields/text_serach_field.dart';
import '../../Constants/bottomNavBar.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Card(
              child: Container(
                alignment: Alignment.topLeft,
                height:170,
      
                decoration: const BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(8),
                    bottomEnd: Radius.circular(8),)
                ),
                child:const Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          AvatarCircle(name_letter: "Hanzala",),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Hanzala Habib",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.amberAccent
                            ),),
                          )

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: TextSearchField(),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(child: bottomNavBar())
          ],
        ),
      ),
    );
  }
}


