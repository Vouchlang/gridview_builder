import 'package:flutter/material.dart';

import 'Test_Vido.dart';

class Test_Hero extends StatelessWidget {
  final Test tested;
  const Test_Hero({Key? key, required this.tested}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hero'),
        ),
        body: Hero(
          tag: tested.id,
          child: Container(
            height: 500,
            color: tested.color,
            // color: test
          ),
        ));
  }
}
