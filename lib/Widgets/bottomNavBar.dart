
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lectro/Widgets//Tabs/lectures_tabs.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  final NavigationController controller=Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(()=>controller.pages[controller.currentIndex.value],),
        bottomNavigationBar: Obx(
            ()=> NavigationBar(
              selectedIndex: controller.currentIndex.value,
            onDestinationSelected: (index)=>controller.currentIndex.value=index,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: "Home"),
                NavigationDestination(icon: Icon(Icons.notification_important), label: "Notification"),
              ]),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController{
  Rx<int>currentIndex=0.obs;
  final pages=[
    LecturesTabs(),
    Center(child: Text("Notification"))
  ];
}