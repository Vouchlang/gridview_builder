import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gridview_builder/Guest_Acc/Guest_Dashboard/VDO/Test_Hero.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class Test {
  late final String id;
  late final Color color;

  Test({required this.id, required this.color});
}

List<Test> test = [
  Test(id: 'id-1', color: Colors.amber),
  Test(id: 'id-2', color: Colors.red),
  Test(id: 'id-3', color: Colors.green),
  Test(id: 'id-4', color: Colors.brown),
  Test(id: 'id-5', color: Colors.pink),
];

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing Hero in Lists'),
      ),
      body: Container(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Test_Hero(
                            tested: test[index],
                          )));
            },
            child: Hero(
              tag: test[index],
              child: Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(5),
                color: test[index].color,
              ),
            ),
          );
        },
        itemCount: test.length,
      )),
    );
  }
}
