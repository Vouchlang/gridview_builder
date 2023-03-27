import 'package:flutter/material.dart';
import 'package:gridview_builder/Guest_Acc/Guest_Dashboard/VDO/Test_Vido.dart';

class Test_Hero extends StatefulWidget {
  final Test tested;
  const Test_Hero({super.key, required this.tested});

  @override
  State<Test_Hero> createState() => _Test_HeroState();
}

class _Test_HeroState extends State<Test_Hero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Hero'),
        ),
        body: Hero(
          tag: testing,
          child: Container(
            height: 500,
            width: double.infinity,
            // color: ,
          ),
        ));
  }
}
