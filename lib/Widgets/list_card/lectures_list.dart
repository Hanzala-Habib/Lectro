import 'package:flutter/material.dart';
class LecturesList extends StatefulWidget {
  const LecturesList({super.key});

  @override
  State<LecturesList> createState() => _LecturesListState();
}

class _LecturesListState extends State<LecturesList> {
  @override
  Widget build(BuildContext context) {
    var arr=["Hanzala","Shahbaz","Wajeeha","Sejeela"];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context,index){
              return const Card(
                child: ListTile(
                  leading: Column(
                    children: [
                      Text("Class Name"),
                      Text("Room")
                    ],
                  ),
                  title: Column(
                    children: [
                      Text("TeacherName"),
                      Text("Time")
                    ],
                  ),
                  trailing: Icon(Icons.check_box),
                ),
              );
            },
            separatorBuilder: (context,index){
              return const Divider(
                height: 8,
                thickness: 0.8,
              );
            },
            itemCount: arr.length),
      ),
    );
  }
}
