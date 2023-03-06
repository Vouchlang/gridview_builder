import 'package:flutter/material.dart';
import 'package:gridview_builder/Guest_Dashboard/New_Event/News_Event.dart';
import 'Guest_Dashboard/Registration.dart';
import 'Class/Class_Account_Screen.dart';

class grid_acc extends StatefulWidget {
  const grid_acc({Key? key}) : super(key: key);

  @override
  State<grid_acc> createState() => _grid_accState();
}

class _grid_accState extends State<grid_acc> {

  final List<Account_Screen> account_screen = [
    Account_Screen(
        name: 'គណនីនិស្សិត',
        img: 'assets/image/Acc_Student.png',
        screen: New_Event()
    ),
    Account_Screen(
        name: 'គណនីអាណាព្យាបាល',
        img: 'assets/image/Acc_Guardian.png',
        screen: New_Event()
    ),
    Account_Screen(
        name: 'គណនីបុគ្គលិក',
        img: 'assets/image/Acc_Staff.png',
        screen: New_Event()
    ),
    Account_Screen(
        name: 'គណនីសាស្ត្រាចារ្យ',
        img: 'assets/image/Acc_Lecturer.png',
        screen: New_Event()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
          children: [
            Container(
              // height: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/usea_bg.jpg'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                children: [
                  SizedBox(height: 270,),
                  GridView.count(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 2,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    children: List.generate(account_screen.length, (index) => Card(
                      elevation: 3,
                      color: Colors.white,
                      shadowColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return account_screen[index].screen;
                          }));
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(account_screen[index].img, scale: 7,),
                              SizedBox(height: 5, ),
                              Text(account_screen[index].name, style: TextStyle(fontSize: 12, fontFamily: 'KhmerOSbattambang'),)
                            ],),
                        ),
                      ),
                    )),),
                ],
              )
            ),


          ],
        )
    );
  }
}
