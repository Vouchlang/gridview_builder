import 'package:flutter/material.dart';
import 'package:gridview_builder/Notifications.dart';
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
    Grid_Home.grid_home(),
    Grid_Acc.grid_acc(),
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
      appBar: AppBar(
        leading: Image.asset('assets/image/usea_logo.png', scale: 45,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ', style: TextStyle(color: Colors.indigo[900], fontSize: 10, fontFamily: 'KhmerOSmuol'),),
                Text('UNIVERSITY OF SOUTH-EAST ASIA', style: TextStyle(color: Colors.indigo[900], fontSize: 11.7, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[200]
              ),
              child: Center(
                child: IconButton(
                    onPressed: (){setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Notifications()));
                    });},
                    icon: Icon(
                        Icons.notifications,
                        color: Colors.indigo[900],
                      size: 20,
                    )),
              )
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.indigo[900],
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ទំព័រដើម',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box,),
              label: 'ចូលគណនី'
          )
        ],
      )
    );
  }
}

