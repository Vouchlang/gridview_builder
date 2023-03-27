import 'package:flutter/material.dart';
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

List<Test> testing = [
  Test(id: 'id-1', color: Colors.amber),
  Test(id: 'id-2', color: Colors.pink),
  Test(id: 'id-3', color: Colors.black),
  Test(id: 'id-4', color: Colors.red),
  Test(id: 'id-5', color: Colors.blue),
];

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Container(
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: testing.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Test_Hero(
                    tested: testing[index],
                  ),
                ),
              ),
              child: Hero(
                tag: testing[index].id,
                child: Container(
                  height: 100,
                  width: 100,
                  color: testing[index].color,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
