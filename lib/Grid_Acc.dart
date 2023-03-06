import 'package:flutter/material.dart';
import 'Registration.dart';

class grid_acc extends StatefulWidget {
  const grid_acc({Key? key}) : super(key: key);

  @override
  State<grid_acc> createState() => _grid_accState();
}

class _grid_accState extends State<grid_acc> {

  final List<String> user_image = [
    'assets/image/Acc_Student.png',
    'assets/image/Acc_Guardian.png',
    'assets/image/Acc_Staff.png',
    'assets/image/Acc_Lecturer.png',
  ];

  final List<String> user_acc = [
    'គណនីនិស្សិត',
    'គណនីអាណាព្យាបាល',
    'គណនីបុគ្គលិក',
    'គណនីសាស្ត្រាចារ្យ'
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
                    children: List.generate(user_acc.length, (index) => Card(
                      elevation: 3,
                      color: Colors.white,
                      shadowColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Registration()));
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(user_image[index], scale: 7,),
                              SizedBox(height: 5, ),
                              Text(user_acc[index], style: TextStyle(fontSize: 12, fontFamily: 'KhmerOSbattambang'),)
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
