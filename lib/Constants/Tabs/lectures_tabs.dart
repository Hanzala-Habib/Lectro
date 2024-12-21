import 'package:flutter/material.dart';
import 'package:lectro/Constants/list_card/lectures_list.dart';

class LecturesTabs extends StatefulWidget {
  const LecturesTabs({super.key});

  @override
  State<LecturesTabs> createState() => _LecturesTabsState();
}

class _LecturesTabsState extends State<LecturesTabs> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _Tabcontroller= TabController(length: 2, vsync:this);
    return Scaffold(
      body:Column(
        children: [
          TabBar(
               controller:_Tabcontroller,
            indicator:const UnderlineTabIndicator(
              borderSide: BorderSide(width: 5.0),
            ),
            labelPadding: const EdgeInsets.symmetric(horizontal: 30),

                  tabs: const [
                    Tab(
                      child: Text("Today Lectures"),
                    ),
                    Tab(
                      child: Text("Free Slots"),
                    ),
                  ],
          ),
          Expanded(

            child: TabBarView(
                controller:_Tabcontroller ,
                children: const[
              LecturesList(),
              Center(child: Text("freeSlots"))
            ]),
          )
        ],
      ),
    );
  }
}
