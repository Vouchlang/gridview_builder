import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gridview_builder/Guest_Dashboard/Notifications.dart';
import 'package:get/get.dart';
import 'Grid_Home.dart' as Grid_Home;
import 'Grid_Acc.dart' as Grid_Acc;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {

  late TabController controller;

  List pages=[
    Grid_Home.Grid_Home(),
    Grid_Acc.Grid_Acc(),
  ];

  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],
      bottomNavigationBar:SizedBox(
        height: 50,
        child:  BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 1,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.indigo[900],
          unselectedItemColor: Colors.grey,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedLabelStyle: TextStyle(fontFamily: 'KhmerOSbattambang'),
          unselectedLabelStyle: TextStyle(fontFamily: 'KhmerOSbattambang'),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20,),
              label: 'ទំព័រដើម'.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box, size: 20,),
              label: 'ចូលគណនី'.tr,
            )
          ],
        ),
      )
    );
  }
}

